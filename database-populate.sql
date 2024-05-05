START TRANSACTION;

INSERT INTO Carreras (Nombre, Descripcion) VALUES
  ('Licenciatura en Ciencias de la Computación', 'Forma profesionales con sólidas habilidades en programación, análisis y desarrollo de software.'),
  ('Ingeniería Informática', 'Prepara profesionales expertos en el diseño, implementación y gestión de sistemas informáticos.'),
  ('Tecnicatura en Desarrollo Web', 'Brinda las competencias necesarias para crear y mantener sitios web dinámicos e interactivos.'),
  ('Licenciatura en Administración de Empresas', 'Desarrolla profesionales capaces de liderar y gestionar organizaciones de manera eficiente.'),
  ('Contaduría Pública', 'Forma profesionales expertos en la gestión financiera, contable y fiscal de empresas e instituciones.'),
  ('Derecho', 'Prepara abogados con sólidas bases jurídicas para desempeñarse en diversos ámbitos del derecho.'),
  ('Psicología', 'Forma profesionales capaces de comprender y atender las necesidades psicológicas de las personas.'),
  ('Medicina', 'Prepara médicos con los conocimientos y habilidades necesarios para diagnosticar, tratar y prevenir enfermedades.'),
  ('Arquitectura', 'Forma profesionales creativos y competentes para diseñar y construir espacios habitables y funcionales.'),
  ('Ingeniería Civil', 'Prepara ingenieros expertos en el diseño, construcción y mantenimiento de obras civiles.'),
  ('Licenciatura en Educación', 'Forma docentes con las competencias necesarias para impartir educación de calidad en diversos niveles.'),
  ('Licenciatura en Letras', 'Desarrolla profesionales con habilidades en el análisis, interpretación y producción de textos literarios.'),
  ('Licenciatura en Comunicación Social', 'Forma profesionales capaces de comunicar de manera efectiva en diversos contextos.'),
  ('Periodismo', 'Prepara periodistas con las competencias necesarias para investigar, redactar y difundir información de manera veraz y objetiva.'),
  ('Publicidad y Marketing', 'Forma profesionales expertos en la creación y gestión de estrategias de marketing para promocionar productos y servicios.'),
  ('Diseño Gráfico', 'Desarrolla profesionales creativos con habilidades para diseñar y comunicar ideas a través de imágenes y elementos visuales.'),
  ('Gastronomía', 'Forma profesionales con las competencias necesarias para preparar y servir alimentos de alta calidad.'),
  ('Turismo', 'Prepara profesionales expertos en la gestión de servicios turísticos y la atención al cliente.'),
  ('Hotelería', 'Forma profesionales con las habilidades necesarias para administrar y operar hoteles y establecimientos de hospedaje.');


INSERT INTO Planes (Id_carrera, Nombre, Descripcion) VALUES
  (1, 'Plan Tradicional', 'Formación integral en ciencias de la computación con énfasis en programación, análisis y desarrollo de software.'),
  (1, 'Plan de Especialización en Inteligencia Artificial', 'Enfoque en el desarrollo de sistemas inteligentes y aplicaciones de machine learning.'),
  (1, 'Plan de Computación en la Nube', 'Especialización en el uso de tecnologías de computación en la nube para el desarrollo y despliegue de aplicaciones.'),
  (2, 'Plan de Ingeniería de Software', 'Énfasis en el diseño, implementación y mantenimiento de software de alta calidad.'),
  (2, 'Plan de Desarrollo de Sistemas Móviles', 'Formación en el desarrollo de aplicaciones para dispositivos móviles con iOS y Android.'),
  (2, 'Plan de Redes y Seguridad Informática', 'Enfoque en el diseño, implementación y administración de redes informáticas seguras.'),
  (3, 'Plan de Desarrollo Web Front-end', 'Formación en tecnologías front-end para la creación de interfaces web dinámicas e interactivas.'),
  (3, 'Plan de Desarrollo Web Back-end', 'Enfoque en el desarrollo de aplicaciones web del lado del servidor y bases de datos.'),
  (3, 'Plan de Diseño Gráfico Web', 'Especialización en el diseño de interfaces web y experiencias de usuario (UX).'),
  (4, 'Plan de Administración General', 'Formación integral en gestión empresarial con énfasis en liderazgo, finanzas y marketing.'),
  (4, 'Plan de Gestión de Proyectos', 'Enfoque en la planificación, ejecución y control de proyectos empresariales.'),
  (4, 'Plan de Administración de Empresas Internacionales', 'Especialización en comercio exterior, negocios internacionales y gestión multicultural.'),
  (5, 'Plan de Contabilidad Financiera', 'Formación en contabilidad financiera, estados financieros y análisis financiero.'),
  (5, 'Plan de Contabilidad de Costos', 'Enfoque en la contabilidad de costos, presupuestos y control de gastos.'),
  (5, 'Plan de Auditoría y Contabilidad Gubernamental', 'Especialización en auditoría, control interno y contabilidad pública.'),
  (6, 'Plan de Derecho Civil', 'Formación en el derecho civil, contratos, obligaciones y propiedad.'),
  (6, 'Plan de Derecho Penal', 'Enfoque en el derecho penal, delitos, penas y procedimientos penales.'),
  (6, 'Plan de Derecho Constitucional', 'Especialización en derecho constitucional, derechos fundamentales y organización del Estado.'),
  (7, 'Plan de Psicología Clínica', 'Formación en evaluación, diagnóstico y tratamiento de problemas psicológicos.'),
  (7, 'Plan de Psicología Educativa', 'Enfoque en la psicología del aprendizaje, desarrollo humano y educación.');


INSERT INTO Alumnos (Nombre, Apellido, Email, Telefono, Id_carrera) VALUES
  ('Juan', 'Pérez', 'juan.perez@correo.com', '1234567890', 1),
  ('María', 'García', 'maria.garcia@correo.com', '9876543210', 1),
  ('Pedro', 'López', 'pedro.lopez@correo.com', '1112223334', 1),
  ('Ana', 'Martínez', 'ana.martinez@correo.com', '5556667778', 2),
  ('Roberto', 'Gómez', 'roberto.gomez@correo.com', '4443332221', 2),
  ('Laura', 'Rodríguez', 'laura.rodriguez@correo.com', '3332221110', 2),
  ('David', 'Sánchez', 'david.sanchez@correo.com', '7776665554', 3),
  ('Sandra', 'Flores', 'sandra.flores@correo.com', '6665554443', 3),
  ('Carlos', 'Ramírez', 'carlos.ramirez@correo.com', '5554443332', 3);


SAVEPOINT alumnos_1;

INSERT INTO Alumnos (Nombre, Apellido, Email, Telefono, Id_carrera) VALUES 
  ('Jessica', 'Navarro', 'jessica.navarro@correo.com', '4443332221', 4),
  ('Luis', 'Jiménez', 'luis.jimenez@correo.com', '3332221110', 4),
  ('Diana', 'Ruiz', 'diana.ruiz@correo.com', '2221110009', 4),
  ('Alejandro', 'Moreno', 'alejandro.moreno@correo.com', '1110009998', 5),
  ('Patricia', 'Blanco', 'patricia.blanco@correo.com', '0009998887', 5),
  ('José', 'Fernández', 'jose.fernandez@correo.com', '9998887776', 5),
  ('Andrea', 'Muñoz', 'andrea.munoz@correo.com', '8887776665', 6),
  ('Francisco', 'Alvarez', 'francisco.alvarez@correo.com', '7776665554', 6),
  ('Cristina', 'Soria', 'cristina.soria@correo.com', '6665554443', 6),
  ('Marcos', 'Vega', 'marcos.vega@correo.com', '5554443332', 7),
  ('Carolina', 'Domínguez', 'carolina.dominguez@correo.com', '4443332221', 7);

SAVEPOINT alumnos_2;

INSERT INTO Docente (Nombre, Apellido) VALUES
  ('Mariana', 'Lopez'),
  ('Alejandro', 'Diaz'),
  ('Patricia', 'Fernandez'),
  ('Carlos', 'Gonzalez'),
  ('Sofia', 'Martinez'),
  ('Roberto', 'Perez'),
  ('Laura','Blanco'),
  ('David', 'Romero'),
  ('Sandra', 'Torres'),
  ('Miguel', 'Suarez'),
  ('Natalia', 'Garcia'),
  ('Enrique', 'Alvarez'),
  ('Maria', 'Moreno'),
  ('Daniel', 'Sanchez');


SAVEPOINT docente_1;

-- Inserciones adicionales para la tabla Docente
INSERT INTO Docente (Nombre, Apellido) VALUES
  ('Claudia', 'Ruiz'),
  ('Pablo', 'Navarro'),
  ('Veronica', 'Jimenez'),
  ('Sebastian', 'Muñoz'),
  ('Araceli', 'Hernandez'),
  ('Esteban', 'Olivares');

SAVEPOINT docente_2;

INSERT INTO Materias (Nombre, Id_plan, Id_docente) VALUES
  ('Programación I', 1, 1),  -- Plan Tradicional, Docente 1
  ('Fundamentos de Computación', 1, 2),  -- Plan Tradicional, Docente 2
  ('Base de Datos I', 1, 3),  -- Plan Tradicional, Docente 3
  ('Introducción a la Inteligencia Artificial', 2, 1),  -- Plan IA, Docente 1
  ('Aprendizaje Automático', 2, 4),  -- Plan IA, Docente 4
  ('Computación en la Nube', 3, 2),  -- Plan Computación en la Nube, Docente 2
  ('Arquitectura de Software', 4, 3),  -- Plan Ingeniería de Software, Docente 3
  ('Pruebas de Software', 4, 5),  -- Plan Ingeniería de Software, Docente 5
  ('Desarrollo Web Front-end I', 5, 6),  -- Plan Desarrollo Web Front-end, Docente 6
  ('Desarrollo Web Back-end I', 5, 7),  -- Plan Desarrollo Web Back-end, Docente 7
  ('Administración de Empresas I', 6, 8),  -- Plan Administración General, Docente 8
  ('Marketing', 6, 9),  -- Plan Administración General, Docente 9
  ('Finanzas para Empresas', 6, 10);  -- Plan Administración General, Docente 10
  

SAVEPOINT materias_1;

-- Inserciones adicionales para la tabla Materias
INSERT INTO Materias (Nombre, Id_plan, Id_docente) VALUES
	('Contabilidad General', 7, 11),  -- Plan Contabilidad Financiera, Docente 11  
	('Costos y Presupuestos', 7, 12),  -- Plan Contabilidad Financiera, Docente 12
	('Derecho Civil I', 8, 13),  -- Plan Derecho Civil, Docente 13
	('Derecho Penal I', 8, 14),  -- Plan Derecho Penal, Docente 14
	('Psicología General', 9, 15),  -- Plan Psicología Clínica, Docente 15
	('Psicología del Aprendizaje', 9, 16),  -- Plan Psicología Educativa, Docente 16
	('Evaluación Psicológica', 10, 15);  -- Plan Psicología Clínica, Docente 15  

SAVEPOINT materias_2;

INSERT INTO MesasExamen (fecha, Id_materias) VALUES
  ('2024-06-10 10:00:00', 1),  -- Programación I 
  ('2024-06-12 15:00:00', 2),  -- Fundamentos de Computación 
  ('2024-06-14 09:00:00', 3),  -- Base de Datos I 
  ('2024-06-17 11:00:00', 4),  -- Introducción a la IA 
  ('2024-06-19 14:00:00', 5),  -- Aprendizaje Automático 
  ('2024-06-21 10:00:00', 6),  -- Computación en la Nube 
  ('2024-06-24 15:00:00', 7),  -- Arquitectura de Software 
  ('2024-06-26 09:00:00', 8),  -- Pruebas de Software 
  ('2024-06-28 11:00:00', 9),  -- Desarrollo Web Front-end I 
  ('2024-07-01 14:00:00', 10); -- Desarrollo Web Back-end I 


SAVEPOINT mesas_1;

-- Inserciones adicionales para la tabla MesasExamen
INSERT INTO MesasExamen (fecha, Id_materias) VALUES
  ('2024-07-03 10:00:00', 11), -- Administración de Empresas I 
  ('2024-07-05 15:00:00', 12), -- Marketing 
  ('2024-07-08 09:00:00', 13), -- Finanzas para Empresas 
  ('2024-07-10 11:00:00', 14), -- Contabilidad General 
  ('2024-07-12 14:00:00', 15), -- Costos y Presupuestos 
  ('2024-07-15 10:00:00', 16), -- Derecho Civil I 
  ('2024-07-17 15:00:00', 17), -- Derecho Penal I 
  ('2024-07-19 09:00:00', 18), -- Psicología General 
  ('2024-07-22 11:00:00', 19), -- Psicología del Aprendizaje 
  ('2024-07-24 14:00:00', 20); -- Evaluación Psicológica 


SAVEPOINT mesas_2;

INSERT INTO Inscripciones (Id_alumno, Id_examen) VALUES
  (1, 1),  -- Alumno 1 se inscribe a examen de Programación I 
  (1,2),	-- Alumno 1 se inscribe a examen de Fundamentos de Computación
  (2, 2),  -- Alumno 2 se inscribe a examen de Fundamentos de Computación
  (3, 3),
  (3,1),
  (3,4),
  (4,3),
  (4, 4),
  (4,5),
  (4,6),
  (5, 5),
  (5,6),
  (1, 6),  
  (3, 8),  
  (7, 9),   
  (2, 11); 


SAVEPOINT inscripto_1;

-- Inserciones adicionales para la tabla Inscripciones
INSERT INTO Inscripciones (Id_alumno, Id_examen) VALUES
  (9, 12), 
  (6, 14), 
  (8, 15), 
  (10, 17),
  (12, 19),
  (11, 10),
  (14, 16),
  (13, 18),
  (15, 20),
  (15,19),
  (17, 7),
  (16,12),
  (16, 13);


SAVEPOINT inscripto_2;

INSERT INTO Notas (Id_inscripcion, Nota, Comentarios, Fecha_nota) VALUES
  (1, 8.5, 'Excelente desempeño en el examen.', '2024-06-12 15:00:00'),  -- Inscripción 1, Nota 8.5
  (2, 7.2, 'Buen desempeño, con algunas áreas de mejora.', '2024-06-14 11:00:00'),  -- Inscripción 2, Nota 7.2
  (3, 9.0, 'Sobresaliente dominio de los conceptos.', '2024-06-16 13:00:00'), 
  (4, 6.8, 'Aprobaría con mayor estudio y dedicación.', '2024-06-19 16:00:00'), 
  (5, 10.0, 'Excelente trabajo, superando las expectativas.', '2024-06-21 12:00:00'),  
  (6, 8.0, 'Buen desempeño, con potencial para mejorar.', '2024-06-26 16:00:00'), 
  (3, 7.5, 'Se observa progreso en comparación con exámenes anteriores.', '2024-06-28 10:00:00'), 
  (7, 9.2, 'Excelente comprensión de los temas evaluados.', '2024-07-03 14:00:00'), 
  (2, 8.8, 'Demuestra un alto nivel de conocimiento.', '2024-07-05 11:00:00'),  
  (9, 4.5, 'Necesita mayor dedicación al estudio.', '2024-07-10 15:00:00'),  
  (6, 9.5, 'Sobresaliente desempeño, demostrando dominio del tema.', '2024-07-12 10:00:00'),  
  (8, 7.0, 'Aprobó el examen, pero con margen de mejora.', '2024-07-17 16:00:00'),  
  (10, 8.2, 'Buen desempeño, con una base sólida de conocimientos.', '2024-07-19 13:00:00'),  
  (12, 5.3, 'Necesita reforzar algunos conceptos.', '2024-07-22 11:00:00'),  
  (11, 9.8, 'Excelente desempeño, destacándose en el examen.', '2024-07-24 15:00:00'),  
  (14, 7.6, 'Aprobó el examen, pero se recomienda seguir estudiando.', '2024-07-26 10:00:00'),  
  (13, 8.9, 'Buen desempeño, con habilidades para resolver problemas.', '2024-07-28 14:00:00');  

SAVEPOINT notas_1;

INSERT INTO Notas (Id_inscripcion, Nota, Comentarios, Fecha_nota) VALUES
  (14, 8.1, 'Buen desempeño, con habilidades para el análisis de datos.', '2024-07-24 15:00:00'),  
  (15, 9.1, 'Excelente trabajo, demostrando gran habilidad analítica.', '2024-07-31 11:00:00'),  
  (16, 7.4, 'Buen desempeño, con potencial para destacar en el futuro.', '2024-07-31 15:00:00'),  
  (17, 5.9, 'Necesita mayor dedicación al estudio, pero tiene potencial.', '2024-08-03 10:00:00'),  
  (18, 8.6, 'Excelente comprensión de los conceptos evaluados.', '2024-08-03 14:00:00'),  
  (19, 9.7, 'Sobresaliente desempeño, superando las expectativas.', '2024-08-05 11:00:00'),  
  (20, 7.8, 'Buen desempeño, con áreas de mejora en la resolución de problemas.', '2024-08-05 15:00:00');  

SAVEPOINT notas_2;

-- -------------- ACCIONES DE FIN DE TRANSACCIÓN ----------------

-- ROLLBACK;

-- ROLLBACK TO docente_2;
-- ROLLBACK TO mesas_1;

-- RELEASE inscripto_2;

COMMIT;
