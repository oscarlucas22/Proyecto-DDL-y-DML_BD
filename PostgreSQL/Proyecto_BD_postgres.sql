create table HOSPITAL (
    Nombre_Hospital varchar(10) unique,
    Direccion varchar(20),
    Telefono varchar(9),
    constraint PK primary key (Nombre_Hospital),
    constraint NH_1 check(Nombre_Hospital ~ '^[A-Z]'),
    constraint tlf_1 check(Telefono ~ '^[9]')
);

create table PLANTA (
    Numero_Planta integer,
    Nombre_Hospital varchar(10),
    Especialidad varchar(20),
    constraint PK_1 primary key (Numero_Planta, Nombre_Hospital),
    constraint NP_fk check(Numero_Planta <= 8),
    constraint NH_2 check(Nombre_Hospital ~ '^[A-Z]'),
    constraint E_1 check( Especialidad in ('Cardiología', 'Ginecología', 'Pediatría', 'Urología', 'Psiquiatría')),
    constraint NH_fk foreign key (Nombre_Hospital) references HOSPITAL(Nombre_Hospital)
);

create table HABITACION (
    Codigo_Habitacion varchar(3),
    Nombre_Hospital varchar(10),
    Numero_Cama integer,
    constraint PK_2 primary key (Codigo_Habitacion, Nombre_Hospital),
    constraint NH_3 check(Nombre_Hospital ~ '^[A-Z]'),
    constraint CH_1 check(Codigo_Habitacion ~ '^[0-8][0-9]'),
    constraint NC_1 check(Numero_Cama < 300),
    constraint NH_fk2 foreign key (Nombre_Hospital) references HOSPITAL(Nombre_Hospital)
);

create table EMPLEADO (
    DNI_Empleado varchar(9) unique,
    Nombre_Hospital varchar(10),
    Funcion varchar(10) default('Enfermero'),
    Turno varchar(1),
    Salario integer,
    constraint PK_3 primary key (DNI_Empleado, Nombre_Hospital),
    constraint DNI_E_fk check(DNI_Empleado ~ '^[0-9][0-9][0-9]\-[A-Z]'),
    constraint NH_5 check(Nombre_Hospital ~ '^[A-Z]'),
    constraint S_1 check(Salario <= 1400),
    constraint NH_fk3 foreign key (Nombre_Hospital) references HOSPITAL(Nombre_Hospital)
);

create table DOCTOR (
    Numero_Doctor integer,
    DNI_Empleado varchar(9) unique,
    Especialidad varchar(16),
    constraint PK_4 primary key (Numero_Doctor),
    constraint ND_1 check(Numero_Doctor <= 985),
    constraint DNI_E_fk check(DNI_Empleado ~ '^[0-9][0-9][0-9]\-[A-Z]'),
    constraint E_fk2 check( Especialidad in ('Cardiología', 'Ginecología', 'Pediatría', 'Urología', 'Psiquiatría')),
    constraint DNI_fk foreign key (DNI_Empleado) references EMPLEADO(DNI_Empleado)
);

create table ENFERMO (
    Numero_SS integer unique,
    Nombre_Hospital varchar(10),
    Codigo_Habitacion varchar(3),
    Numero_Doctor integer,
    Apellido varchar(20),
    Direccion varchar(20),
    Sexo varchar(1),
    Fecha_Ingreso date not null,
    Fecha_Alta date,
    constraint PK_5 primary key (Numero_SS, Nombre_Hospital),
    constraint NH_6 check(Nombre_Hospital ~ '^[A-Z]'),
    constraint CH_2 check(Codigo_Habitacion ~ '^[0-8][0-9]'),
    constraint ND_2 check(Numero_Doctor <= 985),
    constraint Sex_1 check (Sexo = 'M' or Sexo = 'F'),
    constraint NH_fk4 foreign key (Nombre_Hospital) references HOSPITAL(Nombre_Hospital),
    constraint CH_fk foreign key (Nombre_Hospital, Codigo_Habitacion) references HABITACION(Nombre_Hospital, Codigo_Habitacion),
    constraint ND_fk foreign key (Numero_Doctor) references DOCTOR(Numero_Doctor)
);

--1--
alter table HOSPITAL add column Numero_Cama integer;

--2--
alter table ENFERMO add column Nombre varchar(20);

--3--
alter table EMPLEADO drop constraint S_1;

--4--
alter table ENFERMO add constraint FA_1 check(Fecha_Alta > Fecha_Ingreso);

--5--
alter table EMPLEADO add constraint T_1 check(Turno = 'M' or Turno = 'T' or Turno = 'N');

--6--
alter table ENFERMO drop column Apellido;

--7--
alter table ENFERMO drop column Sexo;

--8--
alter table HOSPITAL drop constraint tlf_1;

--9--
alter table EMPLEADO add constraint salario_1 check (Salario <= 5000);
