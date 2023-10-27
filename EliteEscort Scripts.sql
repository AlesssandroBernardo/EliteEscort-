create database EliteEscort
go

CREATE TABLE marcas (
    id_marca INT PRIMARY KEY not null,
    nombre VARCHAR(45) not null,   
);

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY not null,
    nombre VARCHAR(45 )not null,
    apellido VARCHAR(45) not null,
    direccion VARCHAR(45 )not null,
	telefono INT not null,
    direccion_correo VARCHAR(45) not null,
);

create table servicios(
	id_servicio int primary key not null,
	nombre_servicio varchar(45) not null,
);

create table turnos(
	id_turno int primary key not null,
	nombre_turno varchar(45) not null,
	hora_inicio time not null,
	hora_fin time not null
);

create table sedes(
	id_sede int primary key not null,
	direccion varchar(45) not null,
	hora_inicio_atencion time not null,
	hora_fin_atencion time not null,
);


create table modelos(
	id_modelos int primary key not null,
	nombre_modelo varchar(45) not null,
	id_marca int foreign key (id_marca) references marcas(id_marca) not null
);


create table vehiculos(
	id_vehiculo int primary key not null,
	matricula varchar(45) not null,
	id_modelo int foreign key references modelos(id_modelos) not null
);


create table guardaespaldas(
	id_guardaespalda int primary key not null,
	nombre varchar(45) not null,
	apellido varchar(45) not null,
	direccion_correo varchar(45) not null,
	calificacion int not null,
	id_sede int foreign key references sedes(id_sede) not null
);


create table solicitudes(
	id_solicitud int primary key not null,
	fecha_inicio datetime not null,
	fecha_fin datetime not null,
	id_cliente int foreign key references clientes(id_cliente) not null,
	id_vehiculo int foreign key references vehiculos(id_vehiculo) not null,
	id__servicio int foreign key references servicios(id_servicio) not null
);

alter table solicitudes
alter column id_vehiculo[int] null;

create table solicitudes_guardaespaldas(
	id_solicitud int foreign key references solicitudes(id_solicitud) not null,
	id_guardaespalda int foreign key references guardaespaldas(id_guardaespalda) not null,
	primary key(id_solicitud,id_guardaespalda),
	tarifa decimal(10,2) not null
);


create table guardaespaldas_turnos(
	id_guardaespalda int foreign key references guardaespaldas(id_guardaespalda) not null,
	id_turno int foreign key references turnos(id_turno) not null,
);





