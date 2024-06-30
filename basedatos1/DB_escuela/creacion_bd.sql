CREATE TABLE `cursos` (
  `id` INT AUTO_INCREMENT,
  `nombre` varchar(100),
  `jornada` varchar(100),
  PRIMARY KEY (`id`)
);

CREATE TABLE `roles` (
  `id` INT AUTO_INCREMENT,
  `tipo` varchar(100),
  PRIMARY KEY (`id`)
);

CREATE TABLE `documento` (
  `id` INT AUTO_INCREMENT,
  `tipo` varchar(250),
  `abreviatura` varchar(50),
  PRIMARY KEY (`id`)
);

CREATE TABLE `empleados` (
  `id` INT AUTO_INCREMENT,
  `nombre` varchar(100),
  `apellido` varchar(100),
  `numero_documento` INT,
  `email` varchar(100),
  `fecha_nacimiento` DATE,
  `roles_id` INT,
  `documento_id` INT,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`roles_id`) REFERENCES `roles`(`id`),
  FOREIGN KEY (`documento_id`) REFERENCES `documento`(`id`)
);

CREATE TABLE `asignaturas` (
  `id` INT AUTO_INCREMENT,
  `nombre` varchar(100),
  PRIMARY KEY (`id`)
);

CREATE TABLE `cursos_asignaturas` (
  `id` INT,
  `cursos_id` INT,
  `asignaturas_id` INT,
  `empleados_id` INT,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`cursos_id`) REFERENCES `cursos`(`id`),
  FOREIGN KEY (`empleados_id`) REFERENCES `empleados`(`id`),
  FOREIGN KEY (`asignaturas_id`) REFERENCES `asignaturas`(`id`)
);

CREATE TABLE `estudiantes` (
  `id` INT AUTO_INCREMENT,
  `nombre` varchar(100),
  `apellido` varchar(100),
  `numero_documento` INT,
  `email` varchar(100),
  `fecha_nacimiento` DATE,
  `documento_id` INT,
  `cursos_id` INT,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`cursos_id`) REFERENCES `cursos`(`id`),
  FOREIGN KEY (`documento_id`) REFERENCES `documento`(`id`)
);