--Consultas

--1--
--Obtener el nombre del hospital cuya planta sea de la especialidad de Psiquiatria
    select Nombre_Hospital as "Nombre del Hospital"
    from PLANTA
    where Especialidad = 'Psiquiatría';

--Obtener los dni de los empleados que son cirujanos
    select DNI_Empleado
    from EMPLEADO
    where Funcion = 'Cirujano';

--2--
--Crea una vista para registrar el acceso a los hospitales que ha hecho el doctor correspondiente al numero 453
    create or replace view doctor_453
    as select Nombre_Hospital
    from HOSPITAL
    where Nombre_Hospital in (select Nombre_Hospital 
                              from EMPLEADO 
                              where DNI_Empleado in (select DNI_Empleado 
                                                     from DOCTOR 
                                                     where Numero_Doctor = 453));

    \d doctor_453;
    select * from doctor_453;

--3--
--Obten el numero del doctor cuyo turno sea de noche
    select Numero_Doctor as "Numero del Doctor"
    from DOCTOR
    where DNI_Empleado = (select DNI_Empleado 
                             from EMPLEADO 
                             where Funcion = 'Doctor' and Turno = 'N');

--4--
--Consulta el numero de la SS de los enfermos que esten en el hospital de la direccion Ciudad Universitaria
    select Numero_SS as "Numero de la SS"
    from ENFERMO
    where Nombre_Hospital in (select Nombre_Hospital 
                              from HOSPITAL
                              where Direccion = 'Ciudad Universitaria');

--Muestra el DNI y el turno de los empleados que sean doctores y tengan como especialidad pediatria
    select DNI_Empleado as "DNI", Turno as "Turno"
    from EMPLEADO
    where DNI_Empleado in (select DNI_Empleado
                             from DOCTOR
                             where Especialidad = 'Pediatría');

--5--
--Inserta un nuevo empleado que tenga como dni 114-O y los datos restantes seran igual que el empleado con dni 116-N
    insert into EMPLEADO
    select '114-O', Nombre_Hospital, Funcion, Turno, Salario
    from EMPLEADO
    where DNI_Empleado = '116-N';

--Inserta un nuevo doctor que tenga como numero 202, como dni 114-O y de especialidad igual que el numero de doctor correspondiente al 398
    insert into DOCTOR
    select 202, '114-O', Especialidad
    from DOCTOR
    where Numero_Doctor = 398;

--6--
--Haz que el empleado con el DNI 115-M cobre el doble que el empleado con el dni 777-G
    update EMPLEADO
    set Salario = (select Salario * 2
                   from EMPLEADO
                   where DNI_Empleado = '777-G')
    where DNI_Empleado = (select DNI_Empleado 
                     from EMPLEADO
                     where DNI_Empleado = '115-M');

--7--
--Crea una tabla llamada DATOS en la que guardaras mediante una inserción de datos el DNI de empleado, la Funcion y el Salario de la tabla EMPLEADOS y mediante una consulta de eliminación elimina las filas que tengan una salario mayor que 1200
    create table DATOS (
        new_DNI varchar(9),
        new_Funcion varchar(10),
        new_Salario integer
    );

    insert into DATOS 
    select DNI_Empleado, Funcion, Salario
    from EMPLEADO;

    delete 
    from DATOS 
    where new_Salario > 1200;

--8--
--Mostrar los hospitales y el codigo de habitacion que tienen mas de 25 numero de camas en las habitaciones
    select h.Nombre_Hospital as "Nombre del Hospital", Codigo_Habitacion as "Codigo de la Habitacion"
    from HOSPITAL h, HABITACION hb
    where h.Nombre_Hospital = hb.Nombre_Hospital
    group by h.Nombre_Hospital, Codigo_Habitacion, hb.Numero_Cama
    having hb.Numero_Cama > 25;

--Mostrar el nombre, el año de la fecha de alta (solo el año) y el numero del doctor de los enfermos que ha antendido el doctor correspondiente al numero 607 
    select Nombre as "Nombre del enfermo", extract( year from Fecha_Alta) as "Año que se dio de alta", d.Numero_Doctor as "Numero del doctor"
    from ENFERMO e, DOCTOR d
    where e.Numero_Doctor = d.Numero_Doctor
    group by Nombre, Fecha_Alta, d.Numero_Doctor
    having d.Numero_Doctor = 607;

--9--
--Muestra todos los nombres de los hospitales y en otra tabla a la izquierda sus correspondientes plantas
    select Numero_Planta as "Numero de la planta", h.Nombre_Hospital as "Nombre del hospital"
    from HOSPITAL h
    left join PLANTA p
    on h.Nombre_Hospital = p.Nombre_Hospital;

--Muestra la fecha de alta de los enfermos y en otra tabla a la derecha el numero de doctor que le ha atendido
    select Fecha_Alta as "Fecha de alta", d.Numero_Doctor as "Numero del doctor"
    from ENFERMO e
    right join DOCTOR d
    on e.Numero_Doctor = d.Numero_Doctor;

--10--
--Haz una consulta mostrando el numero de la SS de los enfermos hospitalizados en el hospital  General y los numeros de los doctores que trabajan en el hospital General y unelas
    select Numero_SS as "Numero de la SS y Nº Doc del hospital General"
    from ENFERMO
    where Nombre_Hospital = 'General'
    UNION
    select Numero_Doctor
    from DOCTOR
    where DNI_Empleado in (select DNI_Empleado 
                            from EMPLEADO 
                            where Nombre_Hospital = 'General');

--Muestras los dni que son identicos en las tablas EMPLEADO y DOCTOR
    select DNI_Empleado as "DNI identicos de la tabla EMPLEADOS y DOCTOR"
    from EMPLEADO
    INTERSECT
    select DNI_Empleado
    from DOCTOR;

--11--
--Muestra el DNI, su funcion y su salario del empleado que mas cobre
    select DNI_Empleado, Funcion, Salario
    from EMPLEADO
    where Salario = (select max(Salario)
                     from EMPLEADO);

