-- Practica#2
--Crear Base de Datos

CREATE DATABASE Practica#2
go

--Cambiar la Base de Datos
USE Practica#2
go

--Crear la Tabla Cliente
CREATE TABLE tblcliente(
clienteId int not null,
nombre varchar(100) not null,
direccion varchar(100) not null,
tel varchar(20),
constraint pk_tblcliente
primary key (clienteId),
constraint unique_nombre
unique (nombre)
)
go

--Crear la Tabla Empleado
CREATE TABLE tblempleado(
empleadoId int not null,
nombre varchar(50) not null,
apellidos varchar(50)  not null,
sexo char(1) not null,
salario decimal(10,2) not null,
constraint pk_tblempleado
primary key (empleadoId),
constraint chk_sexo
check(sexo='h' or sexo= 'm'),
constraint chk_salario
check(salario>=400 and salario<=40000)
)
go

--Crear la Tabla Venta
CREATE TABLE tblventa(
ventaId int not null,
fecha date not null,
clienteId int not null,
constraint pk_tblventa

)
go