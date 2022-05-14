--Consultas

--1--
--Obtener el nombre del hospital donde la planta sea de la especialidad de Psiquiatria
    select Nombre_Hospital as "Nombre del Hospital"
    from PLANTA
    where Especialidad = 'Psiquiatría';

--Obtener los Codigo de los empleados que son cirujanos
    select Codigo_Empleado as "Codigo"
    from EMPLEADO
    where Funcion = 'Cirujano';

--2--
--Crea una vista que muestre los nombres de los hospitales donde el doctor tenga como numero el 453
    create or replace view doctor_453
    as select Nombre_Hospital
    from HOSPITAL
    where Nombre_Hospital in (select Nombre_Hospital 
                              from EMPLEADO 
                              where Codigo_Empleado in (select Codigo_Empleado 
                                                     from DOCTOR 
                                                     where Numero_Doctor = 453));

    desc doctor_453;
    select * from doctor_453;

--3--
--Obten el numero del doctor cuyo turno sea de noche
    select Numero_Doctor as "Numero del Doctor"
    from DOCTOR
    where Codigo_Empleado in (select Codigo_Empleado 
                          from EMPLEADO 
                          where Funcion = 'Doctor' and Turno = 'N');

--4--
--Consulta el numero de la SS de los enfermos que esten en el hospital de la direccion Ciudad Universitaria
    select Numero_SS as "Numero de la SS"
    from ENFERMO e, HOSPITAL h 
    where e.Nombre_Hospital = h.Nombre_Hospital and h.Direccion = 'Ciudad Universitaria';

--Muestra el Codigo y el turno de los empleados que sean doctores y tengan como especialidad pediatria
    select e.Codigo_Empleado as "Codigo", Turno as "Turno"
    from EMPLEADO e, DOCTOR d
    where e.Codigo_Empleado = d.Codigo_Empleado and Especialidad = 'Pediatría';

--5--
--Inserta un nuevo empleado que tenga como Codigo 114-O y los datos restantes seran igual que el empleado con Codigo 116-N
    insert into EMPLEADO
    select '114-O', Nombre_Hospital, Funcion, Turno, Salario
    from EMPLEADO
    where Codigo_Empleado = '116-N';

--Inserta un nuevo doctor que tenga como numero 202, como Codigo 114-O y de especialidad igual que el numero de doctor correspondiente al 398
    insert into DOCTOR
    select 202, '114-O', Especialidad
    from DOCTOR
    where Numero_Doctor = 398;

--6--
--Haz que el empleado con el Codigo 115-M cobre el doble que el empleado con el codigo 777-G
    update EMPLEADO
    set Salario = (select Salario * 2
                   from EMPLEADO
                   where Codigo_Empleado = '777-G')
    where Codigo_Empleado = '115-M';

--7--
--Crea una tabla llamada DATOS en la que guardaras mediante una inserción de datos el Codigo de empleado, la Funcion y el Salario de la tabla EMPLEADOS y mediante una consulta de eliminación elimina las filas que tengan una salario mayor que 1200
    create table DATOS (
        new_Codigo varchar2(9),
        new_Funcion varchar2(10),
        new_Salario number(4)
    );

    insert into DATOS 
    select Codigo_Empleado, Funcion, Salario
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

--Mostrar el año de la fecha de alta (solo el año) y el numero del doctor de los enfermos que ha antendido el doctor correspondiente al numero 607 
    select extract( year from Fecha_Alta) as "Año que se dio de alta", d.Numero_Doctor as "Numero del doctor"
    from ENFERMO e, DOCTOR d
    where d.Numero_Doctor = e.Numero_Doctor
    group by Fecha_Alta, d.Numero_Doctor
    having d.Numero_Doctor = 607;

--9--
--Muestra todos los nombres de los hospitales junto al numero de plantas que tiene cada hospital
    select h.Nombre_Hospital as "Nombre de los hospitales", count(p.Nombre_Hospital) as "Numero de plantas"
    from HOSPITAL h 
    left join PLANTA p 
    on h.Nombre_Hospital = p.Nombre_Hospital
    group by h.Nombre_Hospital, p.Nombre_Hospital;

--Muestra el numero de la seguridad social de los enfermos junto al numero del doctor que le ha atendido ordenados segun la fecha de ingreso de los enfermos
    select Numero_SS as "Numero Seg Soc", d.Numero_Doctor as "Numero del doctor"
    from ENFERMO e
    left join DOCTOR d
    on d.Numero_Doctor = e.Numero_Doctor
    order by Fecha_Ingreso;

--10--
--Haz una consulta con operadores de conjunto que muestre el numero de la SS de los enfermos que hayan nacido el mes de Enero y de los numeros de los doctores que sean Cardiologos
    select Numero_SS as "Nº SS y Doctor" from ENFERMO where(extract(month from Fecha_Nacimiento) = '01')
    union 
    select Numero_Doctor from DOCTOR where Especialidad = 'Cardiología';

--Haz una consulta con operadores de conjunto que muestre todos los codigos de los empleados que no son doctores
    select Codigo_Empleado from EMPLEADO
    minus
    select Codigo_Empleado from DOCTOR;

--11--
--Muestra el Codigo, su funcion y su salario del empleado o empleados que mas cobren
    select Codigo_Empleado, Funcion, Salario
    from EMPLEADO
    where Salario = (select max(Salario)
                     from EMPLEADO);
