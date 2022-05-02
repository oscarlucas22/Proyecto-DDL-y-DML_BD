create table HOSPITAL (
    Nombre_Hospital varchar2(10),
    Direccion varchar2(20),
    Telefono varchar2(9),
    constraint PK primary key (Nombre_Hospital),
    constraint NH_1 check(Nombre_Hospital =  initcap(Nombre_Hospital)),
    constraint tlf_1 check(regexp_like(Telefono, '{0,3}[0-9]\-{0,3}[0-9]'))
);

create table PLANTA (
    Numero_Planta number(2),
    Nombre_Hospital_fk varchar2(10),
    Especialidad varchar2(20),
    constraint PK_2 primary key (Numero_Planta, Nombre_Hospital_fk),
    constraint NH_2 check(Nombre_Hospital_fk =  initcap(Nombre_Hospital_fk)),
    constraint NP_fk check(Numero_Planta <= 8),
    constraint E_1 check( Especialidad in ('Cardiología', 'Ginecología', 'Pediatría', 'Urología', 'Psiquiatría')),
    constraint NH_fk foreign key (Nombre_Hospital_fk) references HOSPITAL(Nombre_Hospital)
);

create table HABITACION (
    Nombre_Hospital_fk2 varchar2(10),
    Codigo_Habitacion varchar2(3),
    Numero_Cama number(3),
    constraint PK_3 primary key(Codigo_Habitacion, Nombre_Hospital_fk2),
    constraint NH_3 check(Nombre_Hospital_fk2 =  initcap(Nombre_Hospital_fk2)),
    constraint CH_1 check(regexp_like(Codigo_Habitacion, '^[0-8][0-9]')),
    constraint NC_1 check(Numero_Cama < 300),
    constraint NH_fk2 foreign key (Nombre_Hospital_fk2) references HOSPITAL(Nombre_Hospital)
);

create table EMPLEADO (
    DNI_Empleado varchar2(9),
    Nombre_Hospital_fk3 varchar2(10),
    Funcion varchar2(10) default('Enfermero'),
    Turno varchar2(1),
    Salario number(4),
    constraint PK_4 primary key (DNI_Empleado),
    constraint DNI_E check(regexp_like(DNI_Empleado, '{0,3}[0-9]\-[A-Z]')),
    constraint NH_4 check(Nombre_Hospital_fk3 =  initcap(Nombre_Hospital_fk3)),
    constraint S_1 check(Salario <= 1400),
    constraint NH_fk3 foreign key (Nombre_Hospital_fk3) references HOSPITAL(Nombre_Hospital)
);

create table DOCTOR (
    Numero_Doctor number(3),
    DNI_Empleado_fk varchar2(9) unique,
    Especialidad varchar2(16),
    constraint PK_5 primary key (Numero_Doctor),
    constraint ND_1 check(Numero_Doctor <= 985),
    constraint DNI_E_2 check(regexp_like(DNI_Empleado_fk, '[0-9]{0,8}[A-Z]')),
    constraint E_fk2 check( Especialidad in ('Cardiología', 'Ginecología', 'Pediatría', 'Urología', 'Psiquiatría')),
    constraint DNI_fk foreign key (DNI_Empleado_fk) references EMPLEADO(DNI_Empleado)
);

create table ENFERMO (
    Numero_SS number(9),
    Nombre_Hospital_fk4 varchar2(10),
    Codigo_Habitacion_fk varchar2(3),
    Numero_Doctor_fk number(3),
    Apellido varchar2(20),
    Direccion varchar2(20),
    Sexo varchar2(1),
    Fecha_Ingreso date not null,
    Fecha_Alta date,
    constraint PK_6 primary key (Numero_SS),
    constraint CH_2 check(regexp_like(Codigo_Habitacion_fk, '^[0-8][0-9]')),
    constraint ND_2 check(Numero_Doctor_fk <= 985),
    constraint Sex_1 check (Sexo = 'M' or Sexo = 'F'),
    constraint NH_fk4 foreign key (Nombre_Hospital_fk4) references HOSPITAL(Nombre_Hospital),
    constraint CH_fk foreign key (Codigo_Habitacion_fk) references HABITACION(Codigo_Habitacion),
    constraint ND_fk foreign key (Numero_Doctor_fk) references DOCTOR(Numero_Doctor)
);

alter table HOSPITAL add Numero_Cama number(3);
alter table ENFERMO add Fecha_Nacimiento date;
alter table EMPLEADO add constraint salario_1 check (Salario <= 1800);
alter table ENFERMO add constraint FA_1 check(Fecha_Alta > Fecha_Ingreso);
alter table EMPLEADO add constraint T_1 check(Turno = 'M' or Turno = 'T' or Turno = 'N');
alter table ENFERMO drop  column Apellido;
alter table ENFERMO drop column Sexo;
alter table EMPLEADO drop constraint S_1;
alter table HOSPITAL drop constraint tlf_1;