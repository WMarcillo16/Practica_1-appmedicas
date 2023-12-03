Creamos la tabla paciente:
create  table  paciente (
    idpaciente integer not null,
    apellidos varchar not null,
    nombre varchar not null,
    telefono varchar not null,
    edad int not null,
    idsexo integer not null,
    constraint pk_pacientes primary  key  (idpaciente),
    constraint  fk_sexo foreign  key (idsexo) references  sexo (idsexo)
);

Creamos la tabla sexo
create table sexo (
idsexo integer not null,
nombre varchar not null,
constraint pk_sexo primary key(idsexo)
);

Creamos la table medico
create table medico (
    idmedico integer not null,
    apellidos varchar not null,
    nombre varchar not null,
    idsexo integer not null,
    constraint  pk_medico primary  key  (idmedico),
    constraint  fk_sexo foreign  key  (idsexo) references  sexo(idsexo)
);

Creamos la tabla cita
create  table cita (
    idcita integer not null,
    fecha date not null,
    hora time not null,
    descripción varchar not null,
    idmedico integer not null,
    idpaciente integer not null,
    constraint  pk_cita primary  key  (idcita),
    constraint  fk_medico foreign  key  (idmedico) references  medico (idmedico),
    constraint  fk_paciente foreign  key  (idpaciente) references  paciente (idpaciente)
);

Insertamos datos en las 4 tablas:
insert into sexo(idsexo, nombre) values (1, 'mujer');
insert into sexo(idsexo, nombre) values (2, 'hombre');
insert into sexo(idsexo, nombre) values (3, 'hombre');

insert  into  paciente (idpaciente, apellidos, nombre, telefono, edad, idsexo)values  (11, 'Smith Caicedo', 'Alice Frida', '083941234', 25, 1);
insert  into  paciente (idpaciente, apellidos, nombre, telefono, edad, idsexo)values  (12, 'Dominguez Ramirez', 'John Jonny', '083841234', 30, 2);
insert  into  paciente (idpaciente, apellidos, nombre, telefono, edad, idsexo)values  (13, 'Johnson Torres', 'Bob Marley', '0936338723', 40, 3);

insert into medico (idmedico, apellidos, nombre, idsexo) values (20, 'Fernandez Lopez', 'Eugenia', 'Odontologo', 1);
insert into medico(idmedico, apellidos, nombre, idsexo) values (21, ' Lopez Gutierrez', 'Mario', 'fisioterapeuta', 2);
insert into medico(idmedico, apellidos, nombre, idsexo) values (22, 'Ramirez Delgado', 'Roberto', 'Medicina general', 3);

insert into  cita (idcita,fecha,hora,descripción, idmedico, idpaciente) values(001, '2023-07-28', '16:00:00', 'urgencias', 20, 11);
insert into  cita (idcita,fecha,hora,descripción, idmedico, idpaciente) values(002, '2023-02-08', '12:30:00', 'medicina general', 21, 12);
insert into  cita (idcita,fecha,hora,descripción, idmedico, idpaciente) values(003, '2023-09-24', '13:45:00', 'urologia',22, 13);
Visualizamos todo lo de la tabla paciente.
select  * from paciente;
Visualizamos todo lo de la tabla medico.
select * from medico;
Visualizamos todo lo de la tabla cita.
select * from cita;
Actualizar el número de teléfono de un paciente.
update paciente set  telefono = 083941234 where idpaciente = 11;
Actualizar el sexo de un médico:
update medico set sexo = 1 where idmedico = 20;

Eliminar una cita específica:
delete from cita where idcita = 001;
Eliminar un paciente:
delete from paciente where idpaciente = 11;
Eliminar un doctor:
delete from medico where idmedico = 20;

Recuperar todas las citas con información del paciente y del médico:
select c.idcita, c.fecha, c.hora, c.descripción, p.apellidos AS paciente_apellidos, 
p.nombre as paciente_nombre, m.apellidos AS medico_apellidos, m.nombre AS medico_nombre
from cita c
inner join paciente p on c.idpaciente = p.idpaciente
inner join medico m on c.idmedico = m.idmedico;
Recuperar el recuento de citas de cada médico:
select m.idmedico, m.apellidos, m.nombre, count(c.idcita) AS appointment_count
from medico m
inner join cita c on m.idmedico = c.idmedico
group by m.idmedico, m.apellidos, m.nombre;

