USE GestionInscripcion;

-- TRIGGERS --
-- REGISTRO DE CREACION DE ALUMNOS
CREATE TABLE IF NOT EXISTS log_alumnos (
    time_stamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, 
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    correo VARCHAR(100),
    telefono VARCHAR(50),
    acciones VARCHAR(50)
);

DELIMITER //

CREATE TRIGGER log_trigger_alumno
AFTER INSERT ON alumnos
FOR EACH ROW 
BEGIN
    INSERT INTO log_alumnos 
    VALUES (DEFAULT, NEW.nombre, NEW.apellido, NEW.email, NEW.telefono, 'CREACIÓN POR INSERT');
END //

DELIMITER ;

-- TRIGGER QUE IMPIDE LA ELIMINACION DE MESAS DE EXAMEN CON ALUMNOS INSCRIPTOS

DELIMITER //

CREATE TRIGGER evitar_borrar_examen_con_inscriptos
BEFORE DELETE ON MesasExamen
FOR EACH ROW
BEGIN
    DECLARE cant_inscriptos INT;
  
    SELECT COUNT(*) INTO cant_inscriptos
    FROM Inscripciones
    WHERE Id_examen = OLD.Id_examen;
  
    IF cant_inscriptos > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'No se puede eliminar la mesa de examen. Hay alumnos inscriptos.';
    END IF;
END //

DELIMITER ;
