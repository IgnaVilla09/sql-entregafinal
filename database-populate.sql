START TRANSACTION;

INSERT INTO Alumnos (Nombre, Apellido, Email, Telefono) VALUES
('Juan', 'Perez', 'juan@example.com', '123456789'),
('María', 'González', 'maria@example.com', '987654321'),
('Pedro', 'Ramírez', 'pedro@example.com', '555123456'),
('Laura', 'López', 'laura@example.com', '555987654'),
('Luis', 'García', 'luis@example.com', '555456789');

SAVEPOINT alumnos_1;

INSERT INTO Alumnos (Nombre, Apellido, Email, Telefono) VALUES
('Ana', 'Martínez', 'ana@example.com', '111222333'),
('José', 'Rodríguez', 'jose@example.com', '444555666'),
('Carolina', 'Sánchez', 'carolina@example.com', '777888999'),
('Diego', 'Martín', 'diego@example.com', '1011121314'),
('Sofía', 'Hernández', 'sofia@example.com', '1516171819'),
('Martín', 'López', 'martin@example.com', '2021222324'),
('Lucía', 'Gómez', 'lucia@example.com', '2526272829');

SAVEPOINT alumnos_2;

INSERT INTO Docente (Nombre, Apellido) VALUES
('Carlos', 'López'),
('Ana', 'Martínez'),
('Elena', 'Martínez'),
('Miguel', 'Gómez'),
('Sara', 'Hernández');

SAVEPOINT docente_1;

-- Inserciones adicionales para la tabla Docente
INSERT INTO Docente (Nombre, Apellido) VALUES
('Luis', 'Gómez'),
('María', 'López'),
('Alejandro', 'Hernández'),
('Laura', 'Martínez'),
('Pedro', 'García');

SAVEPOINT docente_2;

INSERT INTO Materias (Nombre, Id_docente) VALUES
('Matemáticas', 1),
('Historia', 2),
('Biología', 3),
('Geografía', 2),
('Física', 1);

SAVEPOINT materias_1;

-- Inserciones adicionales para la tabla Materias
INSERT INTO Materias (Nombre, Id_docente) VALUES
('Química', 4),
('Literatura', 5),
('Arte', 3),
('Economía', 1),
('Informática', 2);

SAVEPOINT materias_2;

INSERT INTO MesasExamen (fecha, Id_materias) VALUES
('2024-03-10 09:00:00', 1),
('2024-03-12 10:00:00', 2),
('2024-03-15 09:00:00', 3),
('2024-03-20 10:00:00', 1),
('2024-03-25 11:00:00', 2);

SAVEPOINT mesas_1;

-- Inserciones adicionales para la tabla MesasExamen
INSERT INTO MesasExamen (fecha, Id_materias) VALUES
('2024-04-05 14:00:00', 4),
('2024-04-08 09:00:00', 5),
('2024-04-10 10:00:00', 2),
('2024-04-15 11:00:00', 3),
('2024-04-20 09:00:00', 1);

SAVEPOINT mesas_2;

INSERT INTO Inscripciones (Id_alumno, Id_examen) VALUES
(1, 1),
(2, 2),
(3, 1),
(1, 3),
(2, 2),
(4, 1),
(5, 2);

SAVEPOINT inscripto_1;

-- Inserciones adicionales para la tabla Inscripciones
INSERT INTO Inscripciones (Id_alumno, Id_examen) VALUES
(3, 4),
(4, 3),
(5, 5),
(1, 2),
(2, 1),
(3, 5),
(4, 2);

SAVEPOINT inscripto_2;

-- -------------- ACCIONES DE FIN DE TRANSACCIÓN ----------------

-- ROLLBACK;

-- ROLLBACK TO docente_2;
-- ROLLBACK TO mesas_1;

-- RELEASE inscripto_2;

-- COMMIT;