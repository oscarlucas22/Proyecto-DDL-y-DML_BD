# Proyecto_BD

### Tabla HOSPITAL

| HOSPITAL            |                                 |          |
|---------------------|---------------------------------|----------|
| **Codigo_Hospital** | numerico entero, tamaño 2       | Not Null |
| Nombre              | cadena de caracteres, tamaño 10 |          |
| Direccion           | cadena de caracteres, tamaño 20 |          |
| Telefono            | cadena de caracteres, tamaño 8  |          |

### Tabla PLANTA

| PLANTA                   |                                |                   |
|--------------------------|--------------------------------|-------------------|
| **Numero_Planta**        | numerico entero, tamaño 2      | Valor entre 2 y 8 |
| **_Codigo_Hospital_fk_** | numerico entero, tamaño 2      | Not Null          |
| Especialidad             | cadena de caracteras,tamaño 20 |                   |

### Tabla HABITACION

| HABITACION                |                                 |                   |
|---------------------------|---------------------------------|-------------------|
| **_Codigo_Hospital_fk2_** | numerico entero, tamaño 2       | Not Null          |
| **_Numero_Planta_fk_**    | numerico entero, tamaño 2       | Valor entre 2 y 8 |
| **Codigo_Habitacion**     | numerico entero, tamaño 2       | Not Null          |
| Nombre                    | cadena de caracteres, tamaño 20 |                   |
| Numero_Cama               | numerico entero, tamaño 3       |                   |

### Tabla PLANTILLA

| PLANTILLA                  |                                 |                              |
|----------------------------|---------------------------------|------------------------------|
| **_Codigo_Hospital_fk3_**  | numerico entero, tamaño 2       | Not Null                     |
| **_Numero_Planta_fk2_**    | numerico entero, tamaño 2       | Valor entre 2 y 8            |
| **Numero_Empleado**        | numerico entero, tamaño 4       | Valor entre 1000 y 9950      |
| Apellido                   | cadena de caracteres, tamaño 15 |                              |
| Funcion                    | cadena de caracteres, tamaño 10 | Valor por defecto: Enfermero |
| Turno                      | cadena de caracteres, tamaño 1  |                              |
| Salario                    | numerico entero, tamaño 10      |                              |

### Tabla DOCTOR

| DOCTOR                    |                                 |                                                                       |
|---------------------------|---------------------------------|-----------------------------------------------------------------------|
| **_Codigo_Hospital_fk4_** | numerico entero, tamaño 2       | Not Null                                                              |
| **Numero_Doctor**         | numerico entero, tamaño 3       | < 650                                                                 |
| Apellido                  | cadena de caracteres, tamaño 13 |                                                                       |
| Especialidad              | cadena de caracteres, tamaño 16 | Solo hay: Cardiología, Ginecología, Pediatría, Urología o Psiquiatría |

### Tabla ENFERMO

| ENFERMO                   |                                 |                 |
|---------------------------|---------------------------------|-----------------|
| **Numero_SS**             | numerico entero, tamaño 9       | Valor unico     |
| **_Codigo_Hospital_fk5_** | numerico entero, tamaño 5       | Not Null        |
| Direccion                 | cadena de caracteres, tamaño 20 |                 |
| Fecha_Nacimiento          | fecha                           |                 |
| Fecha_Ingreso             | fecha                           |                 |
| Fecha_Alta                | fecha                           |                 |


#### Añade las siguientes restricciones una vez crees las tablas
* Añade una columna llamada Numero_Cama que sea de tipo numerico entero, tamaño 3 a la tabla HOSPITAL
* Modifica la columna Numero_Empleado y pon una restriccion que el valor este entre el 1000 y 10000
* Elimina la columna de Apellido de la tabla ENFERMO
* El turno de la plantilla tiene que ser una letra mayuscula M(Mañana), T(Tarde), N(Noche)
* Elimina la restriccion de las camas en la tabla OCUPACION
* Desactiva la restriccion de Numero_Empleado de la tabla PLANTILLA
