# Proyecto_BD

### Tabla HOSPITAL

| HOSPITAL            |                                 |                                                                        |
|---------------------|---------------------------------|------------------------------------------------------------------------|
| **Nombre_Hospital** | cadena de caracteres, tamaño 10 | Valor unico y debe de llevar la primera letra mayuscula                |
| Direccion           | cadena de caracteres, tamaño 20 |                                                                        |
| Telefono            | cadena de caracteres, tamaño 9  | los telefonos deben de ser fijos por lo tanto tienen que empezar por 9 |

### Tabla PLANTA

| PLANTA                   |                                 |                                                                       |
|--------------------------|---------------------------------|-----------------------------------------------------------------------|
| **Numero_Planta**        | numerico entero, tamaño 2       | <= 8                                                                  |
| **_Nombre_Hospital_fk_** | cadena de caracteres, tamaño 10 | Valor unico                                                           |
| Especialidad             | cadena de caracteras,tamaño 20  | Solo hay: Cardiología, Ginecología, Pediatría, Urología o Psiquiatría |

### Tabla HABITACION

| HABITACION                |                                 |                                                                               |
|---------------------------|---------------------------------|-------------------------------------------------------------------------------|
| **_Nombre_Hospital_fk2_** | cadena de caracteres, tamaño 10 | Valor unico y debe de llevar la primera letra mayuscula                       |
| **Codigo_Habitacion**     | cadena de caracteres, tamaño 3  | Debe estar constituido de el numero de la planta y un numero de la habitacion |
| Numero_Cama               | numerico entero, tamaño 3       | < 300                                                                         |

### Tabla EMPLEADO

| EMPLEADO                  |                                 |                                                                           |
|---------------------------|---------------------------------|---------------------------------------------------------------------------|
| **DNI_Empleado**          | cadena de caracteres, tamaño 9  | El ultimo caracter tiene que ser una letra y tiene que ser un valor unico |
| **_Nombre_Hospital_fk3_** | cadena de caracteres, tamaño 10 | Valor unico y debe de llevar la primera letra mayuscula                   |
| Funcion                   | cadena de caracteres, tamaño 10 | Valor por defecto: Enfermero                                              |
| Turno                     | cadena de caracteres, tamaño 1  |                                                                           |
| Salario                   | numerico entero, tamaño 10      | <= 1400                                                                   |

### Tabla DOCTOR

| DOCTOR                 |                                 |                                                                           |
|------------------------|---------------------------------|---------------------------------------------------------------------------|
| **Numero_Doctor**      | numerico entero, tamaño 3       | <= 985                                                                    |
| **_DNI_Empleado_fk_**  | cadena de caracteres, tamaño 9  | El ultimo caracter tiene que ser una letra y tiene que ser un valor unico |
| Especialidad           | cadena de caracteres, tamaño 16 | Solo hay: Cardiología, Ginecología, Pediatría, Urología o Psiquiatría     |

### Tabla ENFERMO

| ENFERMO                     |                                 |                                                                |
|-----------------------------|---------------------------------|----------------------------------------------------------------|
| **Numero_SS**               | numerico entero, tamaño 9       | Valor unico                                                    |
| **_Nombre_Hospital_fk4_**   | cadena de caracteres, tamaño 10 | Valor unico y debe de llevar la primera letra mayuscula        |
| **_Codigo_Habitacion_fk2_** | numerico entero, tamaño 3       | Not Null                                                       |
| **_Numero_Doctor_fk2_**     | numerico entero, tamaño 3       | <= 985                                                         |
| Apellido                    | cadena de caracteres, tamaño 20 |                                                                |
| Direccion                   | cadena de caracteres, tamaño 20 |                                                                |
| Sexo                        | cadena de caracteres, tamaño 1  | Tiene que tener una letra mayuscula M(masculino) y F(femenino) |
| **Fecha_Ingreso**           | fecha                           | Not Null                                                       |
| Fecha_Alta                  | fecha                           |                                                                |


#### Añade las siguientes restricciones una vez crees las tablas:
* Añade una columna llamada Numero_Cama que sea de tipo numerico entero, tamaño 3 a la tabla HOSPITAL
* Añade una columna llamada Fecha_Nacimiento que sea de tipo fecha
* Modifica la columna Numero_Empleado y pon una restriccion que el valor este entre el 1000 y 10000
* Modifica la columna de Fecha_Alta y pon una restriccion que la fecha de alta debe serposterior a la fecha de ingreso
* Modifica el Turno de la tabla EMPLEADOS y pon una restriccion que tiene que ser una letra mayuscula M(Mañana), T(Tarde), N(Noche)
* Elimina la columna de Apellido de la tabla ENFERMO
* Elimina la columna de Sexo de la tabla de ENFERMO
* Elimina la restriccion del Salario en la tabla EMPLEADO
* Desactiva la restriccion de Telefono de la tabla HOSPITAL
