CREATE DATABASE agenda_db USE agenda_db CREATE TABLE `assessments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `enrollId` bigint(20) NOT NULL,
  `status` enum('PENDING', 'SEND', 'NOT_SEND', 'REVIEWED') NOT NULL,
  `grade` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 CREATE TABLE `assigments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classId` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `commitmentDate` date NOT NULL,
  `modality` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 CREATE TABLE `classes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subjectCode` varchar(255) NOT NULL,
  `periodId` bigint(20) NOT NULL,
  `facultyId` bigint(20) NOT NULL,
  `teacher` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 CREATE TABLE `enrolls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `classId` bigint(20) NOT NULL,
  `studentId` bigint(20) NOT NULL,
  `grade` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 CREATE TABLE `faculties` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 CREATE TABLE `periods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 CREATE TABLE `students` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4 CREATE TABLE `subjects` (
  `code` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `uc` int(11) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4