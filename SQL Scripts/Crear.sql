# Hoy aprend铆 que las llaves for谩neas se declaran en la entidad d茅bil.
# Here we go again 馃拃

CREATE TABLE Areas
(
    Id      INT PRIMARY KEY AUTO_INCREMENT,
    Nombre  CHAR(64) NOT NULL
);

CREATE TABLE Datos_Contacto
(
    Id              INT PRIMARY KEY AUTO_INCREMENT,
    Tel茅fono        CHAR(20),
    Direcci贸n       CHAR(64),
    Voluntario_Id   INT,

    FOREIGN KEY FK_Voluntario_Id
        (Voluntario_Id)
        REFERENCES Voluntarios(Id)
        ON DELETE CASCADE
);

CREATE TABLE Voluntarios
(
    Id              INT PRIMARY KEY AUTO_INCREMENT,
    Nombre          CHAR(32) NOT NULL,
    Apellido        CHAR(32) NOT NULL,
    Fecha_Ingreso   DATE,
    DNI             INT
);

CREATE TABLE Coordinadores (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Area_Id INT NOT NULL,
    Voluntario_Id INT NOT NULL,

    FOREIGN KEY FK_Areas_Id
        (Area_Id)
        REFERENCES Areas(Id),

    FOREIGN KEY FK_Voluntarios_Id
        (Voluntario_Id)
        REFERENCES Voluntarios(Id)
);

CREATE TABLE Actividades
(
    Id                  INT PRIMARY KEY AUTO_INCREMENT,
    Titulo              CHAR(64),
    Descripci贸n         VARCHAR(1024),
    Fecha_creaci贸n      DATE NOT NULL,
    Fecha_Realizaci贸n   DATE,
    Cancelada           BOOL,
    Area_Id             INT,

    FOREIGN KEY FK_Areas_Id
        (Area_Id)
        REFERENCES Areas(Id)
);

CREATE TABLE Estados_Asistencia
(
    Firma       CHAR(1) PRIMARY KEY,
    Definici贸n  VARCHAR(20) UNIQUE,
    EsNegativa  BOOL,
    Detalle     CHAR(64)
);

CREATE TABLE Asistencias (
    Id              INT PRIMARY KEY AUTO_INCREMENT,
    Actividad_Id    INT NOT NULL,
    Voluntario_Id   INT NOT NULL,
    Estado          CHAR(1),

    FOREIGN KEY FK_Actividades_Id
        (Actividad_Id)
        REFERENCES Actividades(Id),

    FOREIGN KEY FK_Voluntarios_Id
        (Voluntario_Id)
        REFERENCES Voluntarios(Id),

    FOREIGN KEY FK_Estado_Firma
        (Estado)
        REFERENCES Estados_Asistencia (Firma)
);