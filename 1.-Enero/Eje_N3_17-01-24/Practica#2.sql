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
empleadoId int not null,
constraint pk_tblventa
primary key(ventaId),
constraint fk_tblventa_tblcliente
foreign key (clienteId)
references tblcliente(clienteId),
constraint fk_tblventa_tblempleado
foreign key (empleadoId)
references tblempleado(empleadoId)
)
go

--Crear la Tabla Producto
CREATE TABLE tblproducto(
productoId int not null,
descripcion varchar (200) not null,
existencia int not null,
precioUni decimal(10,2) not null,
ventaId int not null,
empleadoId int not null,
constraint pk_productoId
primary key (productoId),
constraint fk_tblproducto_tbldetaven
foreign key (empleadoId)
references tblcliente(clienteId)
)
go

--Crear la Tabla Detalle_Venta
CREATE TABLE tbldetaven(
ventaId int not null,
productoId int not null,
cantidad int not null,
precio decimal (10,2) not null,
constraint pk_tbldetven
primary key(ventaId, productoId),
constraint fk_tblventa
foreign key (ventaId)
references tblventa(ventaId),
constraint fk_tblproducto
foreign key (productoId)
references tblproducto(productoId)
)
go