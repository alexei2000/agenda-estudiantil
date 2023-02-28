CREATE DATABASE agenda_db;
USE agenda_db CREATE TABLE `assessments` (
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
  `commitmentDate` date NOT NULL,
  `modality` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
CREATE TABLE `classes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subjectCode` varchar(255) NOT NULL,
  `periodId` bigint(20) NOT NULL,
  `facultyId` bigint(20) NOT NULL,
  `teacher` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;
CREATE TABLE `enrolls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classId` bigint(20) NOT NULL,
  `studentId` bigint(20) NOT NULL,
  `grade` int(11) NOT NULL,
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
  (NULL, '4', 'ESTRUCTURA DE DATOS', '4')