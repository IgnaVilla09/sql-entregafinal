USE GestionInscripcion;

-- FUNCIONES -- 

-- FUNCIÓN QUE DETERMINA SI UN ALUMNO CONSULTADO ESTA INSCRIPTO A LA MATERIA CONSULTADA.

DROP FUNCTION IF EXISTS alumno_inscripto_materia; -- DROPEAR SI EXISTE

DELIMITER //

CREATE FUNCTION alumno_inscripto_materia(alumno_id INT, materia_id INT) RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
  DECLARE inscripto BOOLEAN;
  DECLARE respuesta VARCHAR(50);
  SELECT COUNT(*) INTO inscripto
  FROM Inscripciones
  WHERE TRUE 
	AND Id_alumno = alumno_id
	AND Id_examen IN (
		SELECT 
			Id_examen 
        FROM MesasExamen 
        WHERE Id_materias = materia_id
    );
  
	IF inscripto > 0 THEN 
			SET respuesta = "Esta inscripto";
	ELSE 
		SET respuesta = "No esta inscripto";
	END IF;
  
  RETURN respuesta;
END//

DELIMITER ;

-- SELECT alumno_inscripto_materia(3,3);

-- FUNCIÓN QUE INDICA CUANTOS INSCRIPTO HAY EN EL EXAMEN

DROP FUNCTION IF EXISTS cantidad_inscriptos_examen; -- DROPEAR SI EXISTE

DELIMITER //

CREATE FUNCTION cantidad_inscriptos_examen(examen_id INT) RETURNS INT
DETERMINISTIC
BEGIN
  DECLARE cantidad_inscriptos INT;
  
  SELECT COUNT(*) INTO cantidad_inscriptos
  FROM Inscripciones
  WHERE Id_examen = examen_id;
  
  RETURN cantidad_inscriptos;
END//

DELIMITER ;

-- SELECT cantidad_inscriptos_examen(2);

-- FUNCION QUE INDICA SI APROBO UN EXAMEN O NO.

DELIMITER //

CREATE FUNCTION EvaluarInscripcionAprobada(Id_inscripcion INT) RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE notaF FLOAT;
    DECLARE mensaje VARCHAR(100);

    -- Obtener la nota asociada a la inscripción
    SELECT 
		n.Nota 
	INTO 
		notaF 
    FROM gestioninscripcion.notas AS n 
    WHERE n.Id_inscripcion = Id_inscripcion;

    -- Evaluar si la nota es mayor o igual al puntaje mínimo para aprobar
    IF notaF >= 6.0 THEN
        SET mensaje = CONCAT('Aprobado - Nota: ', notaF);
    ELSE
        SET mensaje = CONCAT('No Aprobado - Nota: ', notaF);
    END IF;

    RETURN mensaje;
END//

DELIMITER ;


-- SELECT EvaluarInscripcionAprobada(17);
