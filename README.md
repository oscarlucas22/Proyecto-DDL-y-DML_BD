# Proyecto_BD

### Tabla HOSPITAL

| HOSPITAL            |                                 |                                                                        |
|---------------------|---------------------------------|------------------------------------------------------------------------|
| **Nombre_Hospital** | cadena de caracteres, tamaño 10 | Not Null                                                               |
| Direccion           | cadena de caracteres, tamaño 20 |                                                                        |
| Telefono            | cadena de caracteres, tamaño 9  | los telefonos deben de ser fijos por lo tanto tienen que empezar por 9 |

### Tabla PLANTA

| PLANTA                   |                                 |          |
|--------------------------|---------------------------------|----------|
| **Numero_Planta**        | numerico entero, tamaño 2       | <= 8     |
| **_Nombre_Hospital_fk_** | cadena de caracteres, tamaño 10 | Not Null |
| Especialidad             | cadena de caracteras,tamaño 20  |          |

### Tabla HABITACION

| HABITACION                |                                 |                                                                               |
|---------------------------|---------------------------------|-------------------------------------------------------------------------------|
| **_Nombre_Hospital_fk2_** | cadena de caracteres, tamaño 10 | Not Null                                                                      |
| **Codigo_Habitacion**     | cadena de caracteres, tamaño 2  | Debe estar constituido de el numero de la planta y un numero de la habitacion |
| Numero_Cama               | numerico entero, tamaño 3       |                                                                               |

### Tabla EMPLEADO

| EMPLEADO                  |                                 |                                                                           |
|---------------------------|---------------------------------|---------------------------------------------------------------------------|
| **DNI_Empleado**          | cadena de caracteres, tamaño 9  | El ultimo caracter tiene que ser una letra y tiene que ser un valor unico |
| **_Nombre_Hospital_fk3_** | cadena de caracteres, tamaño 10 | Not Null                                                                  |
| Funcion                   | cadena de caracteres, tamaño 10 | Valor por defecto: Enfermero                                              |
| Turno                     | cadena de caracteres, tamaño 1  |                                                                           |
| Salario                   | numerico entero, tamaño 10      | <= 1400                                                                   |

### Tabla DOCTOR

| DOCTOR                 |                                 |                                                                           |
|------------------------|---------------------------------|---------------------------------------------------------------------------|
| **Numero_Doctor**      | numerico entero, tamaño 3       | <= 985                                                                    |
| **_DNI_Empleado_fk_**  |                                 | El ultimo caracter tiene que ser una letra y tiene que ser un valor unico |
| Especialidad           | cadena de caracteres, tamaño 16 | Solo hay: Cardiología, Ginecología, Pediatría, Urología o Psiquiatría     |

### Tabla ENFERMO

| ENFERMO                     |                                 |                                                              |
|-----------------------------|---------------------------------|--------------------------------------------------------------|
| **Numero_SS**               | numerico entero, tamaño 9       | Valor unico                                                  |
| **_Nombre_Hospital_fk4_**   | cadena de caracteres, tamaño 10 | Not Null                                                     |
| **_Codigo_Habitacion_fk2_** | numerico entero, tamaño 3       | Not Null                                                     |
| **_Numero_Doctor_fk2_**     | numerico entero, tamaño 3       | <= 985                                                       |
| Apellido                    | cadena de caracteres, tamaño 20 |                                                              |
| Direccion                   | cadena de caracteres, tamaño 20 |                                                              |
| Fecha_Nacimiento            | fecha                           |                                                              |
| **Fecha_Ingreso**           | fecha                           | Not Null                                                     |
| Fecha_Alta                  | fecha                           | la fecha de alta debe de ser posterior a la fecha de ingreso |


#### Añade las siguientes restricciones una vez crees las tablas:
* Añade una columna llamada Numero_Cama que sea de tipo numerico entero, tamaño 3 a la tabla HOSPITAL
* Modifica la columna Numero_Empleado y pon una restriccion que el valor este entre el 1000 y 10000
* Elimina la columna de Apellido de la tabla ENFERMO
* El turno de los empleados tiene que ser una letra mayuscula M(Mañana), T(Tarde), N(Noche)
* Elimina la restriccion del Salario en la tabla EMPLEADO
* Desactiva la restriccion de Telefono de la tabla HOSPITAL
