-- Practica#1
-- Crear Base de Datos(bd)

CREATE DATABASE Practica#1
go

--Cambiar la Base de Datos
USE Practica#1
go

-- Crear la tabla Contacto
CREATE TABLE tblcontacto(
contactoId int not null,
nombre varchar (100) not null,
constraint pk_tblcontacto
primary key(contactoId),
constraint unique_nombre
unique(nombre)
)
go 

--crear la tabla telefonos

CREATE TABLE tbltelefono(
telefonoId int not null,
numerotel int not null,
contactoId int not null,
constraint pk_tbltelefono
primary key(telefonoId),
constraint unique_numerotel
unique(numerotel),
constraint fk_tbltelefono_tblcontacto
foreign key(contactoId)
references tblcontacto(contactoId)
)