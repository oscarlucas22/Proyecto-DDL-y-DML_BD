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
| **Codigo_Empleado**   | cadena de caracteres, tamaño 9  | El ultimo caracter tiene que ser una letra y tiene que ser un valor unico |
| **_Nombre_Hospital_** | cadena de caracteres, tamaño 10 |                                                                           |
| Funcion               | cadena de caracteres, tamaño 10 | Valor por defecto: Enfermero                                              |
| Turno                 | cadena de caracteres, tamaño 1  |                                                                           |
| Salario               | numerico entero, tamaño 10      | <= 1400                                                                   |

### Tabla DOCTOR

| DOCTOR            |                                 |                                                                           |
|-------------------|---------------------------------|---------------------------------------------------------------------------|
| **Numero_Doctor** | numerico entero, tamaño 3       | <= 985                                                                    |
| _Codigo_Empleado_ | cadena de caracteres, tamaño 9  |                                                                           |
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
| Fecha_Alta            | fecha                           | No puede ser ni en los meses de Junio, Julio y Agosto          |


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
    * Obtener el nombre del hospital cuya planta sea de la especialidad de Psiquiatria
    * Obtener los codigos de los empleados que son cirujanos
 
 * Vistas
    * Crea una vista para registrar el acceso a los hospitales que ha hecho el doctor correspondiente al numero 453
    
* Subconsultas
    * Obten el numero del doctor cuyo turno sea de noche
    
* Combinaciones de tablas
    * Consulta el numero de la SS de los enfermos que esten en el hospital de la direccion Ciudad Universitaria
    * Muestra el Codigo y el turno de los empleados que sean doctores y tengan como especialidad Pediatria

* Insercion de registros. Colsultas de datos anexados
    * Inserta un nuevo empleado que tenga como codigo 114-O y los datos restantes seran igual que el empleado con codigo 116-N
    * Inserta un nuevo doctor que tenga como numero 202, como codigo 114-O y de especialidad igual que el numero de doctor correspondiente al 398
    
* Modificación de registros. Consultas de actualización.
    * Haz que el empleado con el Codigo 115-M cobre el doble que el empleado con el codigo 777-G

* Borrado de registros. Consultas de eliminación.
    * Crea una tabla llamada DATOS en la que guardaras mediante una inserción de datos el Codigo de empleado, la Funcion y el Salario de la tabla EMPLEADOS y mediante una consulta de eliminación elimina las filas que tengan una salario mayor que 1200

* Group by y having
    * Mostrar los hospitales y el codigo de habitacion que tienen mas de 25 numero de camas en las habitaciones
    * Mostrar el nombre, el año de la fecha de alta (solo el año) y el numero del doctor de los enfermos que ha antendido el doctor correspondiente al numero 607
   
* Outer joins. Combinaciones externas.
    * Muestra todos los nombres de los hospitales junto a las plantas que les corresponden
    * Muestra el numero de la seguridad social de los enfermos junto al codigo de los doctores que le ha atendido ordenados segun la fecha de ingreso de los enfermos  

* Consultas con operadores de conjuntos.
    * Haz una consulta mostrando el numero de la SS de los enfermos hospitalizados en el hospital  General y los numeros de los doctores que trabajan en el hospital General y unelas
    * Muestras los codigos que son identicos en las tablas EMPLEADO y DOCTOR

* Subconsultas correlacionadas.
    * Muestra el Codigo, su funcion y su salario del empleado que mas cobre
