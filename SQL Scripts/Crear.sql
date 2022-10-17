CREATE TABLE Areas
(
    Id      INT PRIMARY KEY AUTO_INCREMENT,
    Nombre  CHAR(64) NOT NULL
);

CREATE TABLE Contacto
(
    Id          INT PRIMARY KEY AUTO_INCREMENT,
    Teléfono    CHAR(20),
    Dirección   CHAR(64)
);

CREATE TABLE Voluntarios
(
    Id              INT PRIMARY KEY AUTO_INCREMENT,
    Nombre          CHAR(32) NOT NULL,
    Apellido        CHAR(32) NOT NULL,
    Fecha_Ingreso   DATE,
    DNI             INT,
    Contacto_Id     INT,

    FOREIGN KEY (Contacto_Id) REFERENCES Contacto(Id)
);

CREATE TABLE Coordinadores (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Area_Id INT NOT NULL,
    Voluntario_Id INT NOT NULL,

    FOREIGN KEY (Area_Id) REFERENCES Areas(Id),
    FOREIGN KEY (Voluntario_Id) REFERENCES Voluntarios(Id)
);

CREATE TABLE Actividades
(
    Id                  INT PRIMARY KEY AUTO_INCREMENT,
    Titulo              CHAR(64),
    Descripción         VARCHAR(1024),
    Fecha_creación      DATE NOT NULL,
    Fecha_Realización   DATE,
    Cancelada           BOOL,
    Area_Id             INT,

    FOREIGN KEY (Area_Id) REFERENCES Areas(Id)
);

CREATE TABLE Estado_De_Asistencia
(
    Firma       CHAR(1) PRIMARY KEY,
    Definición  VARCHAR(20) UNIQUE,
    EsNegativa  BOOL
);

CREATE TABLE Asistencias (
    Id              INT PRIMARY KEY AUTO_INCREMENT,
    Actividad_Id    INT NOT NULL,
    Voluntario_Id   INT NOT NULL,
    Estado          CHAR(1),

    FOREIGN KEY (Actividad_Id)  REFERENCES Actividades(Id),
    FOREIGN KEY (Voluntario_Id) REFERENCES Voluntarios(Id),
    FOREIGN KEY (Estado)        REFERENCES Estado_De_Asistencia(Firma)
);