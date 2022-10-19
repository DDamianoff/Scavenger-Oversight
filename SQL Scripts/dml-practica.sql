# práctica con DML

INSERT  INTO Voluntarios (Nombre, Apellido, Fecha_Ingreso, DNI)
VALUES ('Fantasma', 'Rodriguez', STR_TO_DATE('11/1/1951', '%d/%m/%Y'), 16226978);

INSERT INTO Datos_Contacto (Teléfono, Dirección, Voluntario_Id)
VALUES ('··$$%&', 'Calle no existente 123', LAST_INSERT_ID());

UPDATE Voluntarios
SET DNI = 10432781
WHERE Nombre = 'Fantasma';

DELETE FROM Voluntarios WHERE Nombre = 'Fantasma';