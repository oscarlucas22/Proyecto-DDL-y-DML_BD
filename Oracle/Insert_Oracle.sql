--Tabla HOSPITAL
INSERT INTO HOSPITAL VALUES ('Provincial', '0 Donell 50', '964426487', 502);
INSERT INTO HOSPITAL VALUES ('General', 'Atocha s/n', '995311187', 987);
INSERT INTO HOSPITAL VALUES ('La Paz', 'Castellana 1000', '923541187', 412);
INSERT INTO HOSPITAL VALUES ('San Carlos', 'Ciudad Universitaria', '997150087', 845);

--Tabla PLANTA
INSERT INTO PLANTA VALUES (1, 'Provincial', 'Ginecología');
INSERT INTO PLANTA VALUES (2, 'Provincial', 'Pediatría');
INSERT INTO PLANTA VALUES (3, 'Provincial', 'Urología');
INSERT INTO PLANTA VALUES (1, 'General', 'Ginecología');
INSERT INTO PLANTA VALUES (2, 'General', 'Pediatría');
INSERT INTO PLANTA VALUES (1, 'La Paz', 'Ginecología');
INSERT INTO PLANTA VALUES (2, 'La Paz', 'Pediatría');
INSERT INTO PLANTA VALUES (3, 'La Paz', 'Urología');
INSERT INTO PLANTA VALUES (4, 'La Paz', 'Psiquiatría');
INSERT INTO PLANTA VALUES (1, 'San Carlos', 'Ginecología');
INSERT INTO PLANTA VALUES (2, 'San Carlos', 'Pediatría');
INSERT INTO PLANTA VALUES (3, 'San Carlos', 'Urología');
INSERT INTO PLANTA VALUES (4, 'San Carlos', 'Psiquiatría');

--Tabla HABITACION
INSERT INTO HABITACION VALUES ('110', 'Provincial', 23);
INSERT INTO HABITACION VALUES ('120', 'Provincial', 22);
INSERT INTO HABITACION VALUES ('130', 'Provincial', 24);
INSERT INTO HABITACION VALUES ('140', 'Provincial', 23);
INSERT INTO HABITACION VALUES ('210', 'Provincial', 23);
INSERT INTO HABITACION VALUES ('220', 'Provincial', 23);
INSERT INTO HABITACION VALUES ('230', 'Provincial', 24);
INSERT INTO HABITACION VALUES ('240', 'Provincial', 22);
INSERT INTO HABITACION VALUES ('310', 'Provincial', 25);
INSERT INTO HABITACION VALUES ('320', 'Provincial', 22);
INSERT INTO HABITACION VALUES ('330', 'Provincial', 22);
INSERT INTO HABITACION VALUES ('110', 'General', 23);
INSERT INTO HABITACION VALUES ('120', 'General', 22);
INSERT INTO HABITACION VALUES ('130', 'General', 24);
INSERT INTO HABITACION VALUES ('140', 'General', 23);
INSERT INTO HABITACION VALUES ('210', 'General', 23);
INSERT INTO HABITACION VALUES ('220', 'General', 23);
INSERT INTO HABITACION VALUES ('230', 'General', 24);
INSERT INTO HABITACION VALUES ('240', 'General', 22);
INSERT INTO HABITACION VALUES ('250', 'General', 22);
INSERT INTO HABITACION VALUES ('110', 'La Paz', 23);
INSERT INTO HABITACION VALUES ('120', 'La Paz', 22);
INSERT INTO HABITACION VALUES ('130', 'La Paz', 24);
INSERT INTO HABITACION VALUES ('140', 'La Paz', 23);
INSERT INTO HABITACION VALUES ('150', 'La Paz', 23);
INSERT INTO HABITACION VALUES ('210', 'La Paz', 23);
INSERT INTO HABITACION VALUES ('220', 'La Paz', 23);
INSERT INTO HABITACION VALUES ('230', 'La Paz', 24);
INSERT INTO HABITACION VALUES ('240', 'La Paz', 22);
INSERT INTO HABITACION VALUES ('250', 'La Paz', 22);
INSERT INTO HABITACION VALUES ('310', 'La Paz', 26);
INSERT INTO HABITACION VALUES ('320', 'La Paz', 22);
INSERT INTO HABITACION VALUES ('330', 'La Paz', 22);
INSERT INTO HABITACION VALUES ('340', 'La Paz', 22);
INSERT INTO HABITACION VALUES ('410', 'La Paz', 23);
INSERT INTO HABITACION VALUES ('420', 'La Paz', 23);
INSERT INTO HABITACION VALUES ('430', 'La Paz', 23);
INSERT INTO HABITACION VALUES ('440', 'La Paz', 23);
INSERT INTO HABITACION VALUES ('110', 'San Carlos', 23);
INSERT INTO HABITACION VALUES ('120', 'San Carlos', 22);
INSERT INTO HABITACION VALUES ('130', 'San Carlos', 24);
INSERT INTO HABITACION VALUES ('140', 'San Carlos', 23);
INSERT INTO HABITACION VALUES ('150', 'San Carlos', 23);
INSERT INTO HABITACION VALUES ('210', 'San Carlos', 23);
INSERT INTO HABITACION VALUES ('220', 'San Carlos', 23);
INSERT INTO HABITACION VALUES ('230', 'San Carlos', 24);
INSERT INTO HABITACION VALUES ('240', 'San Carlos', 22);
INSERT INTO HABITACION VALUES ('310', 'San Carlos', 26);
INSERT INTO HABITACION VALUES ('320', 'San Carlos', 22);
INSERT INTO HABITACION VALUES ('330', 'San Carlos', 22);
INSERT INTO HABITACION VALUES ('340', 'San Carlos', 22);
INSERT INTO HABITACION VALUES ('410', 'San Carlos', 23);
INSERT INTO HABITACION VALUES ('420', 'San Carlos', 23);
INSERT INTO HABITACION VALUES ('430', 'San Carlos', 23);

--Tabla EMPLEADO
INSERT INTO EMPLEADO VALUES ('111-A', 'Provincial', 'Doctor', 'M', 1400);
INSERT INTO EMPLEADO VALUES ('222-B', 'San Carlos', 'Doctor', 'M', 1400);
INSERT INTO EMPLEADO VALUES ('444-D', 'La Paz', 'Doctor', 'T', 1400);
INSERT INTO EMPLEADO VALUES ('999-I', 'La Paz', 'Doctor', 'T', 1400);
INSERT INTO EMPLEADO VALUES ('666-F', 'San Carlos', 'Doctor', 'M', 1400);
INSERT INTO EMPLEADO VALUES ('112-J', 'San Carlos', 'Doctor', 'N', 1400);
INSERT INTO EMPLEADO VALUES ('113-K', 'General', 'Doctor', 'M', 1400);
INSERT INTO EMPLEADO VALUES ('114-L', 'La Paz', 'Interno', 'M', 1050);
INSERT INTO EMPLEADO VALUES ('777-G', 'San Carlos', 'Interno', 'M', 1050);
INSERT INTO EMPLEADO VALUES ('115-M', 'Provincial', 'Cirujano', 'T', 1500);
INSERT INTO EMPLEADO VALUES ('116-N', 'Provincial', 'Interno', 'M', 1050);
INSERT INTO EMPLEADO VALUES ('333-C', 'Provincial', 'Cirujano', 'N', 1500);
INSERT INTO EMPLEADO (Codigo_Empleado,Nombre_Hospital,Turno,Salario) VALUES ('555-E', 'La Paz', 'T', 1200);
INSERT INTO EMPLEADO (Codigo_Empleado,Nombre_Hospital,Turno,Salario) VALUES ('888-H', 'San Carlos', 'N', 1200);
INSERT INTO EMPLEADO (Codigo_Empleado,Nombre_Hospital,Turno,Salario) VALUES ('117-O', 'La Paz', 'M', 1200);
INSERT INTO EMPLEADO (Codigo_Empleado,Nombre_Hospital,Turno,Salario) VALUES ('118-P', 'General', 'N', 1200);

--Tabla DOCTOR
INSERT INTO DOCTOR VALUES (435, '111-A', 'Cardiología');
INSERT INTO DOCTOR VALUES (585, '222-B', 'Ginecología');
INSERT INTO DOCTOR VALUES (982, '444-D', 'Cardiología');
INSERT INTO DOCTOR VALUES (453, '999-I', 'Pediatría');
INSERT INTO DOCTOR VALUES (398, '666-F', 'Urología');
INSERT INTO DOCTOR VALUES (386, '112-J', 'Psiquiatría');
INSERT INTO DOCTOR VALUES (607, '113-K', 'Pediatría');

--Tabla ENFERMO
INSERT INTO ENFERMO VALUES (280862482, 'Provincial', '310', 435 ,'Recoletos 50', to_date('23/05/1967'), to_date('21/05/2007'), to_date('20/05/1950'));
INSERT INTO ENFERMO VALUES (284991452, 'La Paz', '430', 982, 'Alcala 12', to_date('21/05/1960'), to_date('20/06/2008'), to_date('13/04/1963'));
INSERT INTO ENFERMO VALUES (160657471, 'San Carlos', '430', 398, 'Recoletos 50', to_date('23/01/1942'), to_date('10/05/2000'), to_date('10/03/1902'));
INSERT INTO ENFERMO VALUES (380010217, 'San Carlos', '410', 386, 'Mayor 71', to_date('18/05/1940'), to_date('12/07/2000'), to_date('20/08/1902'));
INSERT INTO ENFERMO VALUES (440294390, 'Provincial', '210', 435, 'Orense 11', to_date('29/02/1952'), to_date('30/08/2001'), to_date('21/08/1902'));
INSERT INTO ENFERMO VALUES (311969044, 'Provincial', '330', 435, 'Peron 38', to_date('16/09/1945'), to_date('13/05/2000'), to_date('17/09/1970'));
INSERT INTO ENFERMO VALUES (285201776, 'General', '120', 607, 'Lopez de Hoyos 2', to_date('26/12/1980'), to_date('12/10/2003'), to_date('12/02/1972'));
INSERT INTO ENFERMO VALUES (154811767, 'General', '210', 607, ' Esquerdo 103', to_date('10/09/1980'), to_date('20/05/2002'), to_date('03/01/1980'));
INSERT INTO ENFERMO VALUES (321790059, 'San Carlos', '320', 398, 'Soto 3', to_date('05/10/1957'), to_date('14/07/2000'), to_date('08/01/1975'));
INSERT INTO ENFERMO VALUES (100973253, 'Provincial', '140', 435, 'Argentina 5', to_date('13/03/1940'), to_date('22/11/2000'), to_date('23/07/1973'));
