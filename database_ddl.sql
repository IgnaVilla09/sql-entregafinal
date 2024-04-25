DROP DATABASE IF EXISTS GestionInscripcion;

CREATE DATABASE IF NOT EXISTS GestionInscripcion;

USE GestionInscripcion;

SET AUTOCOMMIT = 0;

-- Tabla de Alumnos
CREATE TABLE IF NOT EXISTS Alumnos (
    Id_alumno INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    Telefono VARCHAR(20)
);

-- Tabla de Docentes
CREATE TABLE IF NOT EXISTS Docente (
    Id_docente INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL
);

-- Tabla de Materias
CREATE TABLE IF NOT EXISTS Materias (
    Id_materias INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(50) NOT NULL,
    Id_docente INT,
    FOREIGN KEY (Id_docente) REFERENCES Docente(Id_docente)
);

-- Tabla de Mesas de Exámenes
CREATE TABLE IF NOT EXISTS MesasExamen (
    Id_examen INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATETIME,
    Id_materias INT,
    FOREIGN KEY (Id_materias) REFERENCES Materias(Id_materias)
);

-- Tabla de Inscripciones
CREATE TABLE IF NOT EXISTS Inscripciones (
    Id_inscripciones INT PRIMARY KEY AUTO_INCREMENT,
    Id_alumno INT,
    Id_examen INT,
    FOREIGN KEY (Id_alumno) REFERENCES Alumnos(Id_alumno),
    FOREIGN KEY (Id_examen) REFERENCES MesasExamen(Id_examen)
);