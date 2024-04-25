INSERT INTO Alumnos (Nombre, Apellido, Email, Telefono) VALUES
('Juan', 'Perez', 'juan@example.com', '123456789'),
('María', 'González', 'maria@example.com', '987654321'),
('Pedro', 'Ramírez', 'pedro@example.com', '555123456'),
('Laura', 'López', 'laura@example.com', '555987654'),
('Luis', 'García', 'luis@example.com', '555456789');

INSERT INTO Docente (Nombre, Apellido) VALUES
('Carlos', 'López'),
('Ana', 'Martínez'),
('Elena', 'Martínez'),
('Miguel', 'Gómez'),
('Sara', 'Hernández');

INSERT INTO Materias (Nombre, Id_docente) VALUES
('Matemáticas', 1),
('Historia', 2),
('Biología', 3),
('Geografía', 2),
('Física', 1);

INSERT INTO MesasExamen (fecha, Id_materias) VALUES
('2024-03-10 09:00:00', 1),
('2024-03-12 10:00:00', 2),
('2024-03-15 09:00:00', 3),
('2024-03-20 10:00:00', 1),
('2024-03-25 11:00:00', 2);

INSERT INTO Inscripciones (Id_alumno, Id_examen) VALUES
(1, 1),
(2, 2),
(3, 1),
(1, 3),
(2, 2),
(4, 1),
(5, 2);