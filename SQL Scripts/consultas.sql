/*
 Mostrar el nombre y la dirección de cualquier
 voluntario que no esté viviendo en alguna avenida.
 */
SELECT CONCAT(Voluntario.Nombre, ' ', Voluntario.Apellido) AS Nombre, Contacto.Dirección
    FROM
        Voluntarios AS Voluntario
        RIGHT JOIN
            Datos_Contacto AS Contacto
                ON Voluntario.Id = Contacto.Voluntario_Id
WHERE Dirección NOT LIKE '%AveNida%';

/*
 Mostrar coordinadores y sus áreas
 */
SELECT CONCAT(V.Nombre, ' ', V.Apellido) as Coordinador, A.Nombre as Area
    FROM Coordinadores AS C
        LEFT JOIN Voluntarios AS V
            ON V.Id = C.Voluntario_Id
        LEFT JOIN Areas A
            ON A.Id = C.Area_Id
LIMIT 30;

/*
 Mostrar direcciones con más de un habitante que es voluntario
 */
SELECT Id, Dirección, COUNT(Dirección) AS Habitatantes
FROM Datos_Contacto
GROUP BY Dirección
ORDER BY Habitatantes DESC;


/*
 ejemplo simple de ORDER BY
 */
SELECT * FROM Voluntarios
ORDER BY Nombre DESC;