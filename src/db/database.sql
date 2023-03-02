CREATE DATABASE agenda_db;
USE agenda_db;
CREATE TABLE `assessments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `enrollId` bigint(20) NOT NULL,
  `status` enum('PENDING', 'SEND', 'NOT_SEND', 'REVIEWED') NOT NULL,
  `grade` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
CREATE TABLE `assigments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classId` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `commitmentDate` datetime NOT NULL,
  `modality` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
CREATE TABLE `classes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subjectCode` bigint(20) NOT NULL,
  `periodId` bigint(20) NOT NULL,
  `facultyId` bigint(20) NOT NULL,
  `teacher` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
CREATE TABLE `enrolls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classId` bigint(20) NOT NULL,
  `studentId` bigint(20) NOT NULL,
  `grade` int(11),
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
CREATE TABLE `faculties` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
CREATE TABLE `periods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
CREATE TABLE `students` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
CREATE TABLE `subjects` (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `uc` int(11) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
INSERT INTO `subjects` (`code`, `level`, `name`, `uc`)
VALUES (
    NULL,
    '1',
    'COMPRENSIÓN Y EXPRESIÓN LINGÜÍSTICA',
    '3'
  ),
  (
    NULL,
    '1',
    'ORIENTACIÓN Y CULTURA UNIVERSITARIA',
    '2'
  ),
  (
    NULL,
    '1',
    'TÉCNICAS DE ESTUDIO E INVESTIGACIÓN',
    '2'
  ),
  (NULL, '1', 'MATEMÁTICA I', '4'),
  (NULL, '1', 'QUÍMICA GENERAL', '4'),
  (NULL, '1', 'FUNDAMENTOS DE LA INFORMÁTICA', '4'),
  (NULL, '1', 'LÓGICA COMPUTACIONAL', '3'),
  (NULL, '2', 'FÍSICA I', '4'),
  (NULL, '2', 'MATEMÁTICA II', '3'),
  (
    NULL,
    '2',
    'DIBUJO E INTERPRETACIÓN DE PLANOS',
    '3'
  ),
  (NULL, '2', 'TÉCNICAS DE PROGRAMACIÓN I', '4'),
  (NULL, '2', 'INGLÉS I', '1'),
  (NULL, '2', 'ÁLGEBRA LINEAL', '3'),
  (
    NULL,
    '2',
    'INTRODUCCIÓN A LA ADMINISTRACIÓN',
    '2'
  ),
  (NULL, '3', 'DESARROLLO HUMANO', '2'),
  (NULL, '3', 'FÍSICA II', '4'),
  (NULL, '3', 'LABORATORIO DE FÍSICA I', '2'),
  (NULL, '3', 'INGLÉS TÉCNICO', '1'),
  (NULL, '3', 'MATEMÁTICA III', '4'),
  (NULL, '3', 'MATEMÁTICAS DISCRETAS', '4'),
  (NULL, '3', 'TÉCNICAS DE PROGRAMACIÓN II', '4'),
  (NULL, '4', 'MATEMÁTICA IV', '4'),
  (NULL, '4', 'ESTADÍSTICA I', '3'),
  (NULL, '4', 'TÉCNICAS DE PROGRAMACIÓN III', '4'),
  (NULL, '4', 'CIRCUITOS Y SISTEMAS DIGITALES', '3'),
  (NULL, '4', 'LABORATORIO DE FÍSICA II', '2'),
  (NULL, '4', 'ESTRUCTURA DE DATOS', '4');
INSERT INTO `periods` (`id`, `name`)
VALUES (NULL, '2022 - 01'),
(NULL, '2022 - 02');
INSERT INTO `faculties` (`id`, `name`)
VALUES (NULL, 'Atlántico');
INSERT INTO `classes` (
    `id`,
    `subjectCode`,
    `periodId`,
    `facultyId`,
    `teacher`
  )
VALUES (NULL, '1', '1', '1', 'María González'),
  (NULL, '2', '1', '1', 'Carla Herrera'),
  (NULL, '3', '1', '1', 'Richard Gutierrez'),
  (NULL, '4', '1', '1', 'Marlon Martínez'),
  (NULL, '5', '1', '1', 'Walter blanco'),
  (NULL, '6', '1', '1', 'Jesús Rosales'),
  (NULL, '7', '1', '1', 'Pedro Hernández'),
  (NULL, '8', '2', '1', 'Mario Fernandez'),
  (NULL, '9', '2', '1', 'Rodrigo Caldera'),
  (NULL, '10', '2', '1', 'Carlos Bustamante'),
  (NULL, '11', '2', '1', 'Michael Rojas'),
  (NULL, '12', '2', '1', 'Tony Marquez'),
  (NULL, '13', '2', '1', 'Sheryl Bolivar');
INSERT INTO `enrolls` (`id`, `classId`, `studentId`, `grade`)
VALUES (NULL, '1', '1', '9'),
  (NULL, '2', '1', '8'),
  (NULL, '3', '1', '9'),
  (NULL, '4', '1', '6'),
  (NULL, '5', '1', '7'),
  (NULL, '6', '1', '6'),
  (NULL, '7', '1', '10'),
  (NULL, '8', '1', NULL),
  (NULL, '9', '1', NULL),
  (NULL, '10', '1', NULL),
  (NULL, '11', '1', NULL),
  (NULL, '12', '1', NULL),
  (NULL, '13', '1', NULL),
  (NULL, '14', '1', NULL)
INSERT INTO `assigments` (
    `id`,
    `classId`,
    `name`,
    `commitmentDate`,
    `modality`
  )
VALUES (
    NULL,
    '1',
    'LA COMUNICACIÓN',
    '2023-03-02',
    'EXAMEN'
  );
INSERT INTO `assigments` (
    `id`,
    `classId`,
    `name`,
    `commitmentDate`,
    `modality`
  )
VALUES (
    NULL,
    '2',
    'NORMAS DE LA UNIVERSIDAD',
    '2023-02-25 22:31:49',
    'EXAMEN'
  );