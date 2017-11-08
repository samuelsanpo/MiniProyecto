Create Database MiniProyecto;
Use MiniProyecto;

Create table Medico(
idMedico int(11)not null,
Nombre varchar (100)not null,
Apellido varchar (100)not null,
Celular int(10)not null,
email varchar(20)not null,
Primary Key(idMedico));


Create table Paciente(
idPaciente int(11)not null,
Nombre varchar(20)not null,
Apellido varchar(20)not null,
Direccion varchar(20)not null,
email varchar(20)not null,
Celular int(10)not null,
Primary key (idPaciente));


Create table Remision(
idRemision int(11)not null,
fecha date,
idPaciente int(11)not null,
idMedico int(11)not null,
Primary key (idRemision),
Foreign key (idPaciente) References Paciente(idPaciente),
Foreign key(idMedico) References Medico(idMedico));


Create table Examen(
idExamen int(11)not null,
Nombre varchar(20)not null,
Descripcion varchar(100)not null,
Primary key(idExamen));

Create table Remision_Examen(
idRemision int(11)not null,
idExamen int(11)not null,
Primary key (idRemision,idExamen));


Create table Bacteriologo(
idBacteriologo int(11)not null,
Nombre varchar(20)not null,
Apellido varchar(20)not null,
Resultado varchar(200)not null,
Primary key(idBacteriologo));


Create table Laboratorio(
idLaboratorio int(11)not null,
Nit int(11)not null,
Nombre varchar(20)not null,
email varchar(20)not null,
Primary key (idLaboratorio));


Create table Parametro(
idParametro int(11)not null,
idExamen int(11)not null,
ValorMinimo varchar(20)not null,
ValorMaximo varchar(20)not null,
Primary key(idParametro),
Foreign key (idExamen) References Examen(idExamen));


Create table Resultado(
idResultado int(11)not null,
idPaciente int(11)not null,
idParametro int(11)not null,
idBacteriologo int(11)not null,
Valor int(11)not null,
FechaRealizacion date not null,
Primary key (idResultado),
Foreign key(idPaciente)References Paciente(idPaciente),
Foreign key (idParametro)References Parametro(idParametro),
Foreign key(idBacteriologo)References Bacteriologo(idBacteriologo));


