# Proyecto_BD

### Tabla HOSPITAL

| HOSPITAL            |                                 |          |
|---------------------|---------------------------------|----------|
| **Codigo_Hospital** | numerico entero, tamaño 2       | Not Null |
| Nombre              | cadena de caracteres, tamaño 10 |          |
| Direccion           | cadena de caracteres, tamaño 20 |          |
| Telefono            | cadena de caracteres, tamaño 8  |          |

### Tabla SALA

| SALA                     |                                 |          |
|--------------------------|---------------------------------|----------|
| **_Codigo_Hospital_fk_** | numerico entero, tamaño 2       | Not Null |
| **Codigo_Sala**          | numerico entero, tamaño 2       | Not Null |
| Nombre                   | cadena de caracteres, tamaño 20 |          |
| Numero_Cama              | numerico entero, tamaño 3       |          |

### Tabla PLANTILLA

| PLANTILLA                 |                                 |                              |
|---------------------------|---------------------------------|------------------------------|
| **_Codigo_Hospital_fk2_** | numerico entero, tamaño 2       | Not Null                     |
| **_Codigo_Sala_fk_**      | numerico entero, tamaño 2       | Not Null                     |
| **Numero_Empleado**       | numerico entero, tamaño 4       | Valor entre 1000 y 9950      |
| Apellido                  | cadena de caracteres, tamaño 15 |                              |
| Funcion                   | cadena de caracteres, tamaño 10 | Valor por defecto: Enfermero |
| Turno                     | cadena de caracteres, tamaño 1  |                              |
| Salario                   | numerico entero, tamaño 10      |                              |

### Tabla OCUPACION

| OCUPACION                |                           |                         |
|--------------------------|---------------------------|-------------------------|
| **Inscripcion**          | numerico entero, tamaño 5 | Not Null                |
| **_Codigo_Hospital_fk_** | numerico entero, tamaño 2 | Not Null                |
| **_Codigo_Sala_**        | numerico entero, tamaño 2 | Not Null                |
| Cama                     | numerico entero, tamaño 3 | Numero entre el 1 y 100 |

### Tabla DOCTOR

| DOCTOR                |                                 |                                     |
|-----------------------|---------------------------------|-------------------------------------|
| **_Codigo_hospital_** | numerico entero, tamaño 2       | Not Null                            |
| **Numero_Doctor**     | numerico entero, tamaño 3       | < 650                               |
| Apellido              | cadena de caracteres, tamaño 13 |                                     |
| Especialidad          | cadena de caracteres, tamaño 16 | Solo hay: Cardiología, Ginecología, Pediatría, Urología o Psiquiatría |

### Tabla ENFERMO

| ENFERMO               |                                 |                 |
|-----------------------|---------------------------------|-----------------|
| **Nombre_Enfermo**    | cadena de caracteres, tamaño 10 | Not Null        |
|**_Inscripcion_fk_**   | numerico entero, tamaño 5       | Not Null        |
| Apellido              | cadena de caracteres, tamaño 15 |                 |
| Direccion             | cadena de caracteres, tamaño 20 |                 |
| Fecha_Nacimiento      | fecha                           |                 |
| Letra_Sala            | cadena de caracteres, tamaño 1  | Letra mayuscula |
| Numero_SS             | numerico entero, tamaño 9       | Valor unico     |


#### Restricciones 
-Añade una columna llamada Numero_Cama que sea de tipo numerico entero, tamaño 3 a la tabla HOSPITAL
-Modifica la columna cama de la tabla OCUPACION, diciendole que sea numerico entero, tamaño 1
-Elimina la columna de apellido de la tabla ENFERMO
-El turno de la plantilla tiene que ser una letra mayuscula M(Mañana), T(Tarde), N(Noche)
-Elimina la restriccion de las camas en la tabla OCUPACION
-Desactiva la restriccion de Numero_Empleado de la tabla PLANTILLA
