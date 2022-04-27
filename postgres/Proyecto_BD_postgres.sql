create table HOSPITAL (
    Nombre_Hospital varchar(10) primary key unique,
    Direccion varchar(20),
    Telefono varchar(9),
    constraint NH_1 check(Nombre_Hospital regexp binary '^[A-Z]{0,1}[a-z]'),
    constraint tlf_1 check(Telefono regexp '^[9]')
);

create table PLANTA (
    Numero_Planta integer(2),
    Nombre_Hospital_fk varchar(10),
    Especialidad varchar(20),
    constraint PK_1 primary key (Numero_Planta, Nombre_Hospital_fk),
    constraint NH_fk foreign key (Nombre_Hospital_fk) references HOSPITAL(Nombre_Hospital),
    constraint NP_fk check(Numero_Planta <= 8),
    constraint NH_2 check(Nombre_Hospital_fk regexp binary '^[A-Z]'),
    constraint E_1 check( Especialidad in ('Cardiologia', 'Ginecologia', 'Pediatria', 'Urologia', 'Psiquiatria'))
);

create table HABITACION (
    Nombre_Hospital_fk2 varchar(10),
    Codigo_Habitacion varchar(3),
    Numero_Cama integer,
    constraint PK_2 primary key (Nombre_Hospital_fk2, Codigo_Habitacion),
    constraint NH_fk2 foreign key (Nombre_Hospital_fk2) references HOSPITAL(Nombre_Hospital),
    constraint NH_3 check(Nombre_Hospital_fk2 regexp binary '^[A-Z]{0,1}[a-z]'),
    constraint CH_1 check(Codigo_Habitacion regexp binary '^[0-8][0-9]'),
    constraint NC_1 check(Numero_Cama < 300)
);

create table EMPLEADO (
    DNI_Empleado varchar(9) unique,
    Nombre_Hospital_fk3 varchar(10),
    Funcion varchar(10) default('Enfermero'),
    Turno varchar(1),
    Salario int(4),
    constraint PK_3 primary key (DNI_Empleado, Nombre_Hospital_fk3),
    constraint NH_fk3 foreign key (Nombre_Hospital_fk3) references HOSPITAL(Nombre_Hospital),
    constraint DNI_E_fk check(DNI_Empleado regexp binary '^[0-9][0-9][0-9]\-[A-Z]'),
    constraint NH_5 check(Nombre_Hospital_fk3 regexp binary '^[A-Z]{0,1}[a-z]'),
    constraint S_1 check(Salario <= 1400)
);

create table DOCTOR (
    Numero_Doctor integer,
    DNI_Empleado_fk varchar(9) unique,
    Especialidad varchar(16),
    constraint PK_4 primary key (Numero_Doctor, DNI_Empleado_fk),
    constraint DNI_fk foreign key (DNI_Empleado_fk) references EMPLEADO(DNI_Empleado),
    constraint ND_1 check(Numero_Doctor <= 985),
    constraint DNI_E_fk check(DNI_Empleado_fk regexp binary '^[0-9][0-9][0-9]\-[A-Z]'),
    constraint E_fk2 check( Especialidad in ('Cardiologia', 'Ginecologia', 'Pediatria', 'Urologia', 'Psiquiatria'))
);

create table ENFERMO (
    Numero_SS integer unique,
    Nombre_Hospital_fk4 varchar(10),
    Codigo_Habitacion_fk varchar(3),
    Numero_Doctor_fk integer,
    Apellido varchar(20),
    Direccion varchar(20),
    Sexo varchar(1),
    Fecha_Ingreso date not null,
    Fecha_Alta date,
    constraint PK_5 primary key (Numero_SS, Nombre_Hospital_fk4, Codigo_Habitacion_fk, Numero_Doctor_fk, Fecha_Ingreso),
    constraint NH_fk4 foreign key (Nombre_Hospital_fk4) references HOSPITAL(Nombre_Hospital),
    constraint CH_fk foreign key (Codigo_Habitacion_fk) references HABITACION(Codigo_Habitacion),
    constraint ND_fk foreign key (Numero_Doctor_fk) references DOCTOR(Numero_Doctor),
    constraint NH_6 check(Nombre_Hospital_fk4 regexp binary '^[A-Z]{0,1}[a-z]'),
    constraint ND_2 check(Numero_Doctor_fk <= 985),
    constraint Sex_1 check (Sexo = 'M' or Sexo = 'F')
);