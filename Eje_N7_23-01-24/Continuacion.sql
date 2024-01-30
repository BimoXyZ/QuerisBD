USE PruebaEntornos

-- Insertar datos apartir de una consulta

SELECT * FROM CategoriaCopia

INSERT INTO CategoriaCopia (IdCategoria, nombre)
SELECT IdCategoria, Iddescripcion FROM Categoria

--Actualización de datos SQL-LMD

SELECT * FROM Producto

INSERT INTO Producto
VALUES(1,'Salchicha', 600, 12, 1)

INSERT INTO Producto
VALUES(2,'Paleta Pollito', 22, 56, 8)

INSERT INTO Producto
VALUES(3,'Refrigerador', 3000, 22, 5)
	(3,'Chilindrina', 23, 43, 9)
	(3,'Terrible Mezcal', 200, 12, 3)
	(3,'Leche de Burra', 2350, 3, 2)

	SELECT * FROM Producto

UPDATE Producto
SET Idproducto = 3
WHERE nombre = 'Paleta Pollito'

UPDATE Producto
SET Idproducto = 4
WHERE nombre = 'Chilindrina'

UPDATE Producto
SET Idproducto = 5
WHERE nombre = 'Terrible Mezcal'

UPDATE Producto
SET Idproducto = 6
WHERE nombre = 'Leche de Burra'

UPDATE Producto
SET nombre 'Salchicha Grande',
	existencia = 20
WHERE Idproducto = 1

ALTER TABLE Producto
ADD CONSTRAINT PK_Producto2
PRIMARY KEY (idproducto)

--Eliminar Registros de una Tabla

/*
	delete from tabla
	where expresion
*/

SELECT * FROM Producto

DELETE FROM Producto
where Idproducto =4

DELETE FROM Producto
WHERE nombre = 'Salchicha Grande'

DELETE FROM Producto
WHERE precio>=3 AND precio<=22

DELETE FROM Producto
WHERE existencia >=3 AND exis<=22