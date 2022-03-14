# Proyecto_BD

### Tabla HOSPITAL

| HOSPITAL            |                                 |                                                                              |
|---------------------|---------------------------------|------------------------------------------------------------------------------|
| **Nombre_Hospital** | cadena de caracteres, tamaño 10 | Not Null                                                                     |
| Direccion           | cadena de caracteres, tamaño 20 |                                                                              |
| Telefono            | cadena de caracteres, tamaño 8  | Tienen que ser todo numeros y tener un guion entre el tercer y cuarto numero |

### Tabla PLANTA

| PLANTA                   |                                 |                   |
|--------------------------|---------------------------------|-------------------|
| **Numero_Planta**        | numerico entero, tamaño 2       | Valor entre 2 y 8 |
| **_Nombre_Hospital_fk_** | cadena de caracteres, tamaño 10 | Not Null          |
| Especialidad             | cadena de caracteras,tamaño 20  |                   |

### Tabla HABITACION

| HABITACION                |                                 |                   |
|---------------------------|---------------------------------|-------------------|
| **_Nombre_Hospital_fk2_** | cadena de caracteres, tamaño 10 | Not Null          |
| **_Numero_Planta_fk_**    | numerico entero, tamaño 2       | Valor entre 2 y 8 |
| **Codigo_Habitacion**     | numerico entero, tamaño 3       | Not Null          |
| Numero_Cama               | numerico entero, tamaño 3       |                   |

### Tabla EMPLEADO

| EMPLEADO                  |                                 |                                            |
|---------------------------|---------------------------------|--------------------------------------------|
| **DNI_Empleado**          | cadena de caracteres, tamaño 9  | El ultimo caracter tiene que ser una letra |
| **_Nombre_Hospital_fk3_** | cadena de caracteres, tamaño 10 | Not Null                                   |
| **_Numero_Doctor_**       | numerico entero, tamaño 3       | < 650                                      |
| Funcion                   | cadena de caracteres, tamaño 10 | Valor por defecto: Enfermero               |
| Turno                     | cadena de caracteres, tamaño 1  |                                            |
| Salario                   | numerico entero, tamaño 10      | < 1400                                     |

### Tabla DOCTOR

| DOCTOR                 |                                 |                                                                       |
|------------------------|---------------------------------|-----------------------------------------------------------------------|
| **Numero_Doctor**      | numerico entero, tamaño 3       | < 650                                                                 |
| **_DNI_Empleado_fk_**  |                                 | Not Null                                                              |
| Especialidad           | cadena de caracteres, tamaño 16 | Solo hay: Cardiología, Ginecología, Pediatría, Urología o Psiquiatría |

### Tabla ENFERMO

| ENFERMO                     |                                 |                 |
|-----------------------------|---------------------------------|-----------------|
| **Numero_SS**               | numerico entero, tamaño 9       | Valor unico     |
| **_Nombre_Hospital_fk4_**   | cadena de caracteres, tamaño 10 | Not Null        |                                                     |
| **_Codigo_Habitacion_fk2_** | numerico entero, tamaño 3       | Not Null        |
| Apellido                    | cadena de caracteres, tamaño 20 |                 |
| Direccion                   | cadena de caracteres, tamaño 20 |                 |
| Fecha_Nacimiento            | fecha                           |                 |
| Fecha_Ingreso               | fecha                           | Not Null        |
| Fecha_Alta                  | fecha                           | Not Null        |


#### Añade las siguientes restricciones una vez crees las tablas:
* Añade una columna llamada Numero_Cama que sea de tipo numerico entero, tamaño 3 a la tabla HOSPITAL
* Modifica la columna Numero_Empleado y pon una restriccion que el valor este entre el 1000 y 10000
* Elimina la columna de Apellido de la tabla ENFERMO
* El turno de los empleados tiene que ser una letra mayuscula M(Mañana), T(Tarde), N(Noche)
* Elimina la restriccion del Salario en la tabla EMPLEADO
* Desactiva la restriccion de Telefono de la tabla HOSPITAL
