
--consultas simples con  select - sql-lmd
USE NORTHWND

--seleccionar todos los campos
select * from Customers

--seleccionar el nombre del cliente, nombre del contacto y la ciudad

select CompanyName, ContactName from Customers

--Seleccionar Todos los Paises de los Clientes (Distinct)

select country from Customers

select distinct country from Customers

-- Selecciona al numero de paises de donde son mis clientes (countr)

select count (*) from Customers

select count (Country) from Customers

select count (distinct Country) from Customers

--Seleccionar el cliente que tenga una ID Anton

select * from Customers
where CustomerID='Anton'

--Seleccionar Todos los clientes de México

select * from Customers
where Country='mexico'

--seleccionar todos los registros de los clientes de Berlin

select * from Customers
where City='Berlin'

--Order by
--Seleccionar todos los productos ordenados por precio

select * from Products
order by UnitPrice

--Seleccionar todos los productos ordenados por el precio de mayor a menor

select * from Products
order by UnitPrice DESC

--Seleccionar todos los productos alfabeticamente

select * from Products
order by ProductName desc

--seleccionar todos los clientes por pais y dentro por nombre de forma ascendente

select Country, CompanyName, City from Customers
order by  Country desc, CompanyName desc


--Operador and
--Seleccionar todos los clientes de españa y que su nombre comience con G

select * from Customers
where Country ='spain' and CompanyName like 'G%' --'Si el signo de %G esta al final, busca aquellos que terminen con dicho caracter, lo mismo pasa si ponemos al inicio, buscara todos los que inicien con eso'

--Seleccionar todos los clientes de Berlin, alemania con un codigo postal mayor a 1200

select * from Customers
where Country ='Germany' and City ='Berlin' and PostalCode > 1200

--Seleccionar todos los clientes de españa, que su nombre comience con G ó R

select * from Customers
where Country = 'Spain'
and (CompanyName like 'G%'
OR CompanyName like 'R%')

--Clusura OR
--Seleccionar todos los clientes de alemania o españa

select * from Customers
where Country = 'Germany'
or Country ='Spain'

--Seleccionar todos los clientes de Berlin o de Noruega o que comience su nombre con G

select * from Customers
where City = 'Norway'
or Country = 'Berlin'
or CompanyName like 'G%'

--Seleccionar todos los clientes que no son de españa

select * from Customers
where not Country ='spain'

--Seleccionar todos los productos que no tengan un precio entre 18 y 20 dolares

select * from Products
where not (UnitPrice >=18
and UnitPrice<=20)

select * from Products
where UnitPrice not between 18 and 20

--Seleccionar todos los clientes que no son de paris o de londres

select * from Customers
where not (City='Paris' or City='London')

select * from Customers
where City in ('paris','london')

select * from Customers
where City not in ('paris','london')

--seleccionar todos los productos que no tienen precios mayores a 30


select * from Products
where not UnitPrice>'30'


--seleccionar todos los productos que no tienen precio menor a 30

select * from Products
where not UnitPrice<'30'

--LIKE
--seleccionar todos los clientes que comienzan con la letra A

select * from Customers
where CompanyName like 'A%'

--seleccionar todos los clientes que finalizan con la palabra "ES"

select * from Customers
where CompanyName like '%ES'

--Seleccionar todos los clientes que contengan la palabra "MER"

select * from Customers
where CompanyName like '%MER%'

--Seleccionar todos los clientes que contengan la palabra "ES"

select * from Customers
where CompanyName like '%ES%'

--WILDCARD "_"
--Seleccionar todos los clientes con una ciudad que comience con cualquier caracter segudo de la palabra ondon

select * from Customers
where City like '_ondon'

select * from Customers
where City like '_e_i_o'

--Seleccionar todos los clientes con una ciudad que comience con "L" seguido de 3 cualquier caracter y que termine con la palabra on

select * from Customers
where City like 'L___on'

--seleccionar todos los productos que comience con la letra "A" o "C" o "T"

select * from Products
where ProductName like '[act]'

--Seleccionar todos los productos que comiencen de la letra "B" a "D"

select * from Products
where ProductName like '[b-g]%'

--Clausura in()
--Seleccionar todos los clientes de alemania, españa, reino unido

select * from Customers
where Country in('germany', 'spain', 'uk')


--lo mismo pero más largo
select * from Customers
where Country ='germanu'
or Country='spain'
or Country='uk'

--not in
--seleccionar todos los clientes que no son de alemania, españa y reino unido

select * from Customers
where Country not in('germany', 'spain', 'uk')

--lo mismo pero más largo
select * from Customers
where not (Country ='germany'
or Country='spain'
or Country='uk')

--instruccion beteween (es un rango)
--Seleccionar todos los productos con un precio entre 10 y 20 USD

select * from Products
where UnitPrice between 10 and 20

--lo mismo pero más largo

select * from Products
where UnitPrice >= 10 and UnitPrice <=20

--alias de columnas y alias de tablas

--seleccionar el nombre del producto, su stock y precio

select * from Products
select ProductName as 'Nombre del Producto',
UnitsInStock as existencia, UnitPrice from Products

select ProductName as 'Nombre del Producto',
UnitsInStock as existencia, p.UnitPrice precio
from Products as p
inner join [Order Details] as od
on p.ProductID = od.ProductID