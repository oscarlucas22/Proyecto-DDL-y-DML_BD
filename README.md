# Proyecto_BD

### Tabla HOSPITAL

| HOSPITAL            |                                 |                                                                        |
|---------------------|---------------------------------|------------------------------------------------------------------------|
| **Nombre_Hospital** | cadena de caracteres, tamaño 10 | Valor unico y debe de llevar la primera letra mayuscula                |
| Direccion           | cadena de caracteres, tamaño 20 |                                                                        |
| Telefono            | cadena de caracteres, tamaño 9  | los telefonos deben de ser fijos por lo tanto tienen que empezar por 9 |

### Tabla PLANTA

| PLANTA                |                                 |                                                                       |
|-----------------------|---------------------------------|-----------------------------------------------------------------------|
| **Numero_Planta**     | numerico entero, tamaño 2       | <= 8                                                                  |
| **_Nombre_Hospital_** | cadena de caracteres, tamaño 10 |                                                                       |
| Especialidad          | cadena de caracteras,tamaño 20  | Solo hay: Cardiología, Ginecología, Pediatría, Urología o Psiquiatría |

### Tabla HABITACION

| HABITACION             |                                 |                                                                               |
|------------------------|---------------------------------|-------------------------------------------------------------------------------|
| **Codigo_Habitacion**  | cadena de caracteres, tamaño 3  | Debe estar constituido de el numero de la planta y un numero de la habitacion |
| **_Nombre_Hospital_**  | cadena de caracteres, tamaño 10 |                                                                               |
| Numero_Cama            | numerico entero, tamaño 3       | < 300                                                                         |

### Tabla EMPLEADO

| EMPLEADO              |                                 |                                                                           |
|-----------------------|---------------------------------|---------------------------------------------------------------------------|
| **DNI_Empleado**      | cadena de caracteres, tamaño 9  | El ultimo caracter tiene que ser una letra y tiene que ser un valor unico |
| **_Nombre_Hospital_** | cadena de caracteres, tamaño 10 |                                                                           |
| Funcion               | cadena de caracteres, tamaño 10 | Valor por defecto: Enfermero                                              |
| Turno                 | cadena de caracteres, tamaño 1  |                                                                           |
| Salario               | numerico entero, tamaño 10      | <= 1400                                                                   |

### Tabla DOCTOR

| DOCTOR            |                                 |                                                                           |
|-------------------|---------------------------------|---------------------------------------------------------------------------|
| **Numero_Doctor** | numerico entero, tamaño 3       | <= 985                                                                    |
| _DNI_Empleado_    | cadena de caracteres, tamaño 9  |                                                                           |
| Especialidad      | cadena de caracteres, tamaño 16 | Solo hay: Cardiología, Ginecología, Pediatría, Urología o Psiquiatría     |

### Tabla ENFERMO

| ENFERMO               |                                 |                                                                |
|-----------------------|---------------------------------|----------------------------------------------------------------|
| **Numero_SS**         | numerico entero, tamaño 9       | Valor unico                                                    |
| **_Nombre_Hospital_** | cadena de caracteres, tamaño 10 |                                                                |
| _Codigo_Habitacion_   | cadena de caracteres, tamaño 3  |                                                                |
| _Numero_Doctor_       | numerico entero, tamaño 3       |                                                                |
| Apellido              | cadena de caracteres, tamaño 20 |                                                                |
| Direccion             | cadena de caracteres, tamaño 20 |                                                                |
| Sexo                  | cadena de caracteres, tamaño 1  | Tiene que tener una letra mayuscula M(masculino) y F(femenino) |
| Fecha_Ingreso         | fecha                           | Not Null                                                       |
| Fecha_Alta            | fecha                           |                                                                |


#### Añade las siguientes restricciones una vez crees las tablas:
* Añade una columna llamada Numero_Cama que sea de tipo numerico entero, tamaño 3 a la tabla HOSPITAL
* Añade una columna llamada Fecha_Nacimiento que sea de tipo date a la tabla de ENFERMO
* Elimina la restriccion del Salario en la tabla EMPLEADO
* Modifica la columna de Fecha_Alta de la tabla ENFERMO y pon una restriccion que la fecha de alta debe ser posterior a la fecha de ingreso
* Modifica el Turno de la tabla EMPLEADOS y pon una restriccion que tiene que ser una letra mayuscula M(Mañana), T(Tarde), N(Noche)
* Elimina la columna de Apellido de la tabla ENFERMO
* Elimina la columna de Sexo de la tabla de ENFERMO
* Desactiva temporalmente la restriccion de Telefono de la tabla HOSPITAL
* Modifica la columna Salario de la tabla EMPLEADO y pon una restriccion de <=5000


### Consultas
* Consulta sencilla
    * Obtener el nombre del hospital donde la planta tenga como especialidad Pediatría
    * Obtener los dni de los empleados que tengan como funcion Cirujano
 
 * Vistas
    * Crea una vista para mostrar el nombre los hospitales en los que el numero del doctor sea 453
    
* Subconsultas
    * Obten el numero del doctor cuyo turno sea de noche
    
* Combinaciones de tablas
    * Consulta el numero de la SS de los enfermos que esten en el hospital de la direccion Ciudad Universitaria
    * Muestra el DNI y el turno de los empleados que sean doctores y tengan como especialidad Pediatría

* Insercion de registros. Colsultas de datos anexados
    * Inserta un nuevo empleado que tenga como dni 114-O y los datos restantes seran igual que el empleado con dni 116-N
    * Inserta un nuevo doctor que tenga como numero 202, como dni 114-O y de especialidad igual que el numero de doctor correspondiente al 398
    
* Modificación de registros. Consultas de actualización.
    * Haz que los cirujanos cobren el doble que los internos

* Borrado de registros. Consultas de eliminación.
    * Crea una tabla llamada DATOS en la que guardaras mediante una inserción de datos el DNI de empleado, la Funcion y el Salario de la tabla EMPLEADOS y mediante una consulta de eliminación elimina las filas que tengan una salario mayor que 1200

* Group by y having
    * Mostrar los hospitales y el codigo de habitacion que tienen mas de 25 numero de camas en las habitaciones
    * Mostrar el nombre, el año de la fecha de alta (solo el año) y el numero del doctor de los enfermos que ha antendido el doctor correspondiente al numero 607
   
* Outer joins. Combinaciones externas.
    * Muestra todos los nombres de los hospitales y en otra tabla a la izquierda sus correspondientes plantas
    * Muestra la fecha de alta de los enfermos y en otra tabla a la derecha el numero de doctor que le ha atendido  

* Consultas con operadores de conjuntos.
    * Haz una consulta mostrando el numero de la SS de los enfermos hospitalizados en el hospital  General y los numeros de los doctores que trabajan en el hospital General y unelas
    * Muestras los dni que son identicos en las tablas EMPLEADO y DOCTOR

* Subconsultas correlacionadas.
    * Muestra el DNI, su funcion y su salario del empleado que mas cobre
