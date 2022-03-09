# Proyecto_BD

2# Tabla HOSPITAL

| HOSPITAL            |                                 |          |
|---------------------|---------------------------------|----------|
| **Codigo_Hospital** | numerico entero, tamaño 2       | Not Null |
| Nombre              | cadena de caracteres, tamaño 10 |          |
| Direccion           | cadena de caracteres, tamaño 20 |          |
| Telefono            | cadena de caracteres, tamaño 8  |          |
| Numero_Cama         | numerico entero, tamaño 3       |          |

# Tabla SALA

| SALA                     |                                 |          |
|--------------------------|---------------------------------|----------|
| **_Codigo_Hospital_fk_** | numerico entero, tamaño 2       | Not Null |
| **Codigo_Sala**          | numerico entero, tamaño 2       | Not Null |
| Nombre                   | cadena de caracteres, tamaño 20 |          |
| Numero_Cama              | numerico entero, tamaño 3       |          |

# Tabla PLANTILLA

| PLANTILLA                 |                                 |          |
|---------------------------|---------------------------------|----------|
| **_Codigo_Hospital_fk2_** | numerico entero, tamaño 2       | Not Null |
| **_Codigo_Sala_fk_**      | numerico entero, tamaño 2       | Not Null |
| **Numero_Empleado**       | numerico entero, tamaño 4       | Not Null |
| Apellido                  | cadena de caracteres, tamaño 15 |          |
| Funcion                   | cadena de caracteres, tamaño 10 |          |
| Turno                     | cadena de caracteres, tamaño 1  |          |
| Salario                   | numerico entero, tamaño 10      |          |

# Tabla OCUPACION

| OCUPACION                |                           |          |
|--------------------------|---------------------------|----------|
| **Inscripcion**          | numerico entero, tamaño 5 | Not Null |
| **_Codigo_Hospital_fk_** | numerico entero, tamaño 2 | Not Null |
| **_Codigo_Sala_**        | numerico entero, tamaño 2 | Not Null |
| Cama                     | numerico entero, tamaño 4 |          |

# Tabla DOCTOR

| DOCTOR                |                                 |          |
|-----------------------|---------------------------------|----------|
| **_Codigo_hospital_** | numerico entero, tamaño 2       | Not Null |
| **Numero_Doctor**     | numerico entero, tamaño 3       | Not Null |
| Apellido              | cadena de caracteres, tamaño 13 |          |
| Especialidad          | cadena de caracteres, tamaño 16 |          |

# Tabla ENFERMO

| ENFERMO               |                                 |          |
|-----------------------|---------------------------------|----------|
| **Nombre_Enfermo**    | cadena de caracteres, tamaño 10 | Not Null |
|**_Inscripcion_fk_**   | numerico entero, tamaño 5       | Not Null |
| Apellido              | cadena de caracteres, tamaño 15 |          |
| Direccion             | cadena de caracteres, tamaño 20 |          |
| Fecha_Nacimiento      | fecha                           |          |
| Letra_Sala            | cadena de caracteres, tamaño 1  |          |
| Numero_SS             | numerico entero, tamaño 9       |          |
