USE gestioninscripcion;

-- ---------------------------- Creacion de Usuarios -----------------------------------------
CREATE USER IF NOT EXISTS 
	"DiegoMartin"@"localhost"
    IDENTIFIED BY "alumno1"
;

CREATE USER IF NOT EXISTS
	"LauraLopez"@"localhost"
    IDENTIFIED BY "alumno2"
;

CREATE USER IF NOT EXISTS
	"CarlosLopez"@"localhost"
    IDENTIFIED BY "docente"
;

-- ------------------PERMISOS OTORGADOS ------------------------------------------

-- ---Permisos para alumnos-------
GRANT SELECT ON gestioninscripcion.mesasexamen TO "DiegoMartin"@"localhost";
GRANT SELECT ON gestioninscripcion.materias TO "DiegoMartin"@"localhost";
GRANT SELECT, INSERT ON gestioninscripcion.inscripciones TO "DiegoMartin"@"localhost";

GRANT SELECT ON gestioninscripcion.mesasexamen TO "LauraLopez"@"localhost";
GRANT SELECT ON gestioninscripcion.materias TO "LauraLopez"@"localhost";
GRANT SELECT, INSERT ON gestioninscripcion.inscripciones TO "LauraLopez"@"localhost";

-- ---Permisos para docente-------
GRANT ALL PRIVILEGES ON gestioninscripcion.* TO "CarlosLopez"@"localhost";

