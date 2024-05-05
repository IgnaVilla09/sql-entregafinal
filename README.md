
# Presentación y Descripción del Programa: Gestión de Inscripciones a Mesas de Exámenes 📚


## Entrega Final

- Alumno: Ignacio Villafañe
- Comisión 53175
- Profesor: Anderson Michel Torres
- Tutor: Nancy Elizabeth Villena Reines

## Presentación:
Este programa busca facilitar la gestión de inscripciones de alumnos a mesas de exámenes. Con esta base de datos, se busca optimizar el proceso de inscripción, brindando datos específicos para administrar las solicitudes de los alumnos y organizar eficientemente las mesas de exámenes.
## Presentación técnica:
El programa es presentado modularmente en diferentes scripts, que puede ser importado manualmente o puede ser ejecutado mediante el archivo project.sh (bash, source). Creará procedures, functions, triggers, users, views, estructura de la db y datos de la db.
Además, se presenta el DUMP para hacer un IMPORT de la database completa (estructura, datos y objetos).
## Descripción del Programa:
- Objetivo principal: Obtener una vista de las inscripciones que detalle la fecha del examen, la materia a evaluar, el docente a cargo y el alumno registrado.
- Funcionalidades:
    #### - Registro de alumnos: Permite añadir nuevos alumnos al sistema con sus datos básicos.
    #### - Gestión de mesas de exámenes: Permite crear nuevas mesas de exámenes, asignar fechas, horarios y asignaturas.
    #### - Inscripción a mesas de exámenes: Los alumnos podrán inscribirse en las mesas de exámenes disponibles según sus necesidades académicas.
    #### - Consulta de inscripciones: Permite a los administradores visualizar las inscripciones realizadas por los alumnos.
    #### - Gestión de usuarios: Administración de cuentas de usuarios con diferentes niveles de acceso.
- Beneficios:
    #### - Optimización del proceso de inscripción a exámenes.
    #### - Mayor organización y control de las mesas de exámenes. 



## ESTRUCTURA

#### TABLAS

```
  Tabla de carreras
```

| Dato | Tipo     | Descripción                |
| :-------- | :------- | :------------------------- |
| `id_carrera` | `int` | **PRIMARY KEY** |
| `Nombre` | `VARCHAR(50)` | |
| `Descripción` | `VARCHAR(255)` | |

```
  Tabla de planes
```

| Dato | Tipo     | Descripción                |
| :-------- | :------- | :------------------------- |
| `id_plan` | `int` | **PRIMARY KEY** |
| `id_carrera` | `int` | **FOREING KEY** |
| `Nombre` | `VARCHAR(50)` | |
| `Descripción` | `VARCHAR(255)` | |

```
  Tabla de alumnos
```

| Dato | Tipo     | Descripción                |
| :-------- | :------- | :------------------------- |
| `id_alumno` | `int` | **PRIMARY KEY** |
| `Nombre` | `VARCHAR(50)` | |
| `Apellido` | `VARCHAR(50)` | |
| `Email` | `VARCHAR(100)` |  |
| `Telefono` | `VARCHAR(20)` |  |


```
  Tabla de docente
```

| Dato | Tipo     | Descripción                |
| :-------- | :------- | :------------------------- |
| `id_docente` | `int` | **PRIMARY KEY** |
| `Nombre` | `VARCHAR(50)` | |
| `Apellido` | `VARCHAR(50)` | |

```
  Tabla de materias
```

| Dato | Tipo     | Descripción                |
| :-------- | :------- | :------------------------- |
| `id_materias` | `int` | **PRIMARY KEY** |
| `id_plan` | `int`  | **FOREING KEY**|
| `Nombre` | `VARCHAR(50)` | |
| `id_docente` | `int`  | **FOREING KEY**|

```
  Tabla de Mesas de examen
```

| Dato | Tipo     | Descripción                |
| :-------- | :------- | :------------------------- |
| `id_examen` | `int` | **PRIMARY KEY** |
| `Fecha` | `DATETIME` | |
| `id_materias` | `int`  | **FOREING KEY**|

```
  Tabla de Inscripciones
```

| Dato | Tipo     | Descripción                |
| :-------- | :------- | :------------------------- |
| `id_inscripciones` | `int` | **PRIMARY KEY** |
| `id_alumno` | `int` | **FOREING KEY**|
| `id_examen` | `int`  | **FOREING KEY**|

```
  Notas
```

| Dato | Tipo     | Descripción                |
| :-------- | :------- | :------------------------- |
| `id_nota` | `int` | **PRIMARY KEY** |
| `id_inscripciones` | `int` | **FOREING KEY**|
| `nota` | `decimal(3,1)`  ||
| `comentarios` | `text`  ||
| `fecha_nota` | `DATETIME`  ||

```
  log_alumnos
```

| Dato | Tipo     | Descripción                |
| :-------- | :------- | :------------------------- |
| `TIME_STAMP` | `TIMESTAMP` ||
| `Nombre` | `VARCHAR(50)` ||
| `Apellido` | `VARCHAR(50)`  ||
| `correo` | `VARCHAR(100)`  ||
| `telefono` | `VARCHAR(50)`  ||
| `acciones` | `VARCHAR(50)`  ||

## Vistas

- Alumnos inscriptos.

- Relacion materias-docente.

- Mesas de examen a detalle.

- Datos completos de inscripción.

- Relacion planes-materias

## Funciones

- Verificación de inscriptos.

- Cantidad de inscriptos.

- Resultado de inscripción

## Procedures

- Cantidad de examen inscripto por alumno.

- Orden de examenes por fecha.

## Triggers

- Registro de creacion de alumnos.

- Seguridad de eliminación de mesas de examen.

## Users y permisos

- Alumnos: **SELECT, INSERT**.

- Docentes: **TODOS LOS PRIVILEGIOS**.

## Transactions

Se aplicaron:

- SAVEPOINTS.
- RELEASE (comentados).
- ROLLBACKS (comentados).
- COMMIT (comentados).
