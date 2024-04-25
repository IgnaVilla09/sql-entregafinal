USE gestioninscripcion;

-- ---------------------------- Creacion de Usuarios -----------------------------------------
CREATE USER 
	"Augusto"@"localhost"
    IDENTIFIED BY "alumno1"
;

CREATE USER 
	"Nico"@"localhost"
    IDENTIFIED BY "alumno2"
;

CREATE USER 
	"CarlosLopez"@"localhost"
    IDENTIFIED BY "docente"
;

-- ------------------PERMISOS OTORGADOS ------------------------------------------

-- ---Permisos para alumnos-------
GRANT SELECT ON gestioninscripcion.mesasexamen TO "Augusto"@"localhost";
GRANT SELECT ON gestioninscripcion.materias TO "Augusto"@"localhost";
GRANT SELECT, INSERT ON gestioninscripcion.inscripciones TO "Augusto"@"localhost";

GRANT SELECT ON gestioninscripcion.mesasexamen TO "Nico"@"localhost";
GRANT SELECT ON gestioninscripcion.materias TO "Nico"@"localhost";
GRANT SELECT, INSERT ON gestioninscripcion.inscripciones TO "Nico"@"localhost";

-- ---Permisos para docente-------
GRANT ALL PRIVILEGES ON gestioninscripcion.* TO "CarlosLopez"@"localhost";

