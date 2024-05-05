-- Eliminar la base de datos si existe
DROP DATABASE IF EXISTS GestionInscripcion;

-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS GestionInscripcion;

USE GestionInscripcion;

-- Desactivar el autocommit para poder realizar varias operaciones a la vez
SET AUTOCOMMIT = 0;

-- Tabla de Carreras
CREATE TABLE IF NOT EXISTS Carreras (
  Id_carrera INT PRIMARY KEY AUTO_INCREMENT,
  Nombre VARCHAR(50) NOT NULL,
  Descripcion VARCHAR(255)
);

-- Tabla de Planes
CREATE TABLE IF NOT EXISTS Planes (
  Id_plan INT PRIMARY KEY AUTO_INCREMENT,
  Id_carrera INT NOT NULL,
  Nombre VARCHAR(50) NOT NULL,
  Descripcion VARCHAR(255),
  FOREIGN KEY (Id_carrera) REFERENCES Carreras(Id_carrera)
);

-- Tabla de Alumnos
CREATE TABLE IF NOT EXISTS Alumnos (
  Id_alumno INT PRIMARY KEY AUTO_INCREMENT,
  Nombre VARCHAR(50) NOT NULL,
  Apellido VARCHAR(50) NOT NULL,
  Email VARCHAR(100),
  Telefono VARCHAR(20),
  Id_carrera INT NOT NULL,
  FOREIGN KEY (Id_carrera) REFERENCES Carreras(Id_carrera)
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
  Id_plan INT NOT NULL,
  Id_docente INT NOT NULL,
  FOREIGN KEY (Id_plan) REFERENCES Planes(Id_plan),
  FOREIGN KEY (Id_docente) REFERENCES Docente(Id_docente)
);

-- Tabla de Mesas de Exámenes
CREATE TABLE IF NOT EXISTS MesasExamen (
  Id_examen INT PRIMARY KEY AUTO_INCREMENT,
  fecha DATETIME NOT NULL,
  Id_materias INT NOT NULL,
  FOREIGN KEY (Id_materias) REFERENCES Materias(Id_materias)
);

-- Tabla de Inscripciones
CREATE TABLE IF NOT EXISTS Inscripciones (
  Id_inscripciones INT PRIMARY KEY AUTO_INCREMENT,
  Id_alumno INT NOT NULL,
  Id_examen INT NOT NULL,
  FOREIGN KEY (Id_alumno) REFERENCES Alumnos(Id_alumno),
  FOREIGN KEY (Id_examen) REFERENCES MesasExamen(Id_examen)
);

-- Tabla de Notas
CREATE TABLE IF NOT EXISTS Notas (
  Id_nota INT PRIMARY KEY AUTO_INCREMENT,
  Id_inscripcion INT NOT NULL,
  Nota DECIMAL(3,1) NOT NULL,
  Comentarios TEXT,
  Fecha_nota DATETIME NOT NULL,
  FOREIGN KEY (Id_inscripcion) REFERENCES Inscripciones(Id_inscripciones)
);