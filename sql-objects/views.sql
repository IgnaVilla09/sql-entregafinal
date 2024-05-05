USE GestionInscripcion;

-- VISTAS -- 

-- VISTA DE ALUMNOS INSCRIPTOS --
CREATE VIEW Alumnos_Inscritos AS
	SELECT  
			A.Id_alumno, A.Nombre AS Nombre_Alumno
	,		A.Apellido AS Apellido_Alumno
	,		M.Id_examen, M.fecha AS Fecha_Examen
	FROM Alumnos AS A
		JOIN Inscripciones I 
			ON A.Id_alumno = I.Id_alumno
		JOIN MesasExamen M 
			ON I.Id_examen = M.Id_examen
;


-- VISTA DE MATERIAS POR DOCENTE --
CREATE VIEW Materias_Con_Docentes AS
	SELECT 
		M.Id_materias
    , 	M.Nombre AS Nombre_Materia
    ,	CONCAT(D.Nombre, ' ', D.Apellido) AS Nombre_Docente
	FROM Materias AS M
	JOIN Docente AS D 
		ON M.Id_docente = D.Id_docente
;



-- VISTA DE MESA DE EXAMENES --
CREATE VIEW Mesas_Examenes_Docentes AS
	SELECT 
		ME.Id_examen, ME.fecha AS Fecha_Examen
    ,	M.Nombre AS Nombre_Materia
    ,	CONCAT(D.Nombre, ' ', D.Apellido) AS Nombre_Docente
	FROM MesasExamen AS ME
	JOIN Materias AS M 
		ON ME.Id_materias = M.Id_materias
	JOIN Docente D 
		ON M.Id_docente = D.Id_docente
;

-- VISTA DE TODA LA INFORMACION DEL EXAMEN

CREATE VIEW InscripcionesInfo AS
SELECT i.Id_inscripciones, a.Nombre AS Nombre_Alumno, a.Apellido AS Apellido_Alumno, e.fecha AS Fecha_Examen, n.Nota, n.Comentarios
FROM Inscripciones i
INNER JOIN Alumnos a ON i.Id_alumno = a.Id_alumno
INNER JOIN MesasExamen e ON i.Id_examen = e.Id_examen
LEFT JOIN Notas n ON i.Id_inscripciones = n.Id_inscripcion;



-- VISTA DE CANTIDAD DE MATERIAS POR PLAN

CREATE VIEW PlanesMaterias AS
SELECT p.Nombre AS Nombre_Plan, COUNT(m.Id_materias) AS Total_Materias
FROM Planes p
LEFT JOIN Materias m ON p.Id_plan = m.Id_plan
GROUP BY p.Nombre;
