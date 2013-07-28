SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `isftwebappfinal` ;
CREATE SCHEMA IF NOT EXISTS `isftwebappfinal` DEFAULT CHARACTER SET utf8 ;
USE `isftwebappfinal` ;

-- -----------------------------------------------------
-- Table `isftwebappfinal`.`alumnos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `isftwebappfinal`.`alumnos` ;

CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`alumnos` (
  `Legajo` INT(6) NOT NULL ,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL ,
  `Apellido` VARCHAR(45) NULL DEFAULT NULL ,
  `Direccion` VARCHAR(45) NULL DEFAULT NULL ,
  `Localidad` VARCHAR(45) NULL DEFAULT NULL ,
  `CP` VARCHAR(45) NULL DEFAULT NULL ,
  `Lectivo` VARCHAR(4) NULL DEFAULT NULL ,
  `Sexo` VARCHAR(1) NULL DEFAULT NULL ,
  `pwd` VARCHAR(45) NULL DEFAULT NULL ,
  `Cod_Carrera` INT(2) NOT NULL ,
  PRIMARY KEY (`Legajo`, `Cod_Carrera`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `isftwebappfinal`.`carrera`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `isftwebappfinal`.`carrera` ;

CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`carrera` (
  `Cod_Carrera` INT(2) NOT NULL ,
  `Nombre` VARCHAR(45) NOT NULL ,
  `Descripcion` VARCHAR(45) NULL DEFAULT NULL ,
  PRIMARY KEY (`Cod_Carrera`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `isftwebappfinal`.`materia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `isftwebappfinal`.`materia` ;

CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`materia` (
  `Cod_Materia` INT(3) NOT NULL ,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL ,
  `ModalidadCursada` VARCHAR(2) NULL DEFAULT NULL ,
  `Cod_Carrera` INT(2) NOT NULL ,
  PRIMARY KEY (`Cod_Materia`, `Cod_Carrera`) ,
  INDEX `fk_materia_carrera1_idx` (`Cod_Carrera` ASC) ,
  CONSTRAINT `fk_materia_carrera1`
    FOREIGN KEY (`Cod_Carrera` )
    REFERENCES `isftwebappfinal`.`carrera` (`Cod_Carrera` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `isftwebappfinal`.`correlativa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `isftwebappfinal`.`correlativa` ;

CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`correlativa` (
  `Cod_Correlativa` INT(3) NOT NULL ,
  `Cod_Materia` INT(3) NOT NULL ,
  `Cod_Carrera` INT(2) NOT NULL ,
  PRIMARY KEY (`Cod_Correlativa`, `Cod_Materia`, `Cod_Carrera`) ,
  INDEX `fk_correlativa_materia1_idx` (`Cod_Materia` ASC) ,
  INDEX `fk_correlativa_carrera1_idx` (`Cod_Carrera` ASC) ,
  CONSTRAINT `fk_correlativa_materia1`
    FOREIGN KEY (`Cod_Materia` )
    REFERENCES `isftwebappfinal`.`materia` (`Cod_Materia` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_correlativa_carrera1`
    FOREIGN KEY (`Cod_Carrera` )
    REFERENCES `isftwebappfinal`.`carrera` (`Cod_Carrera` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `isftwebappfinal`.`curso`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `isftwebappfinal`.`curso` ;

CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`curso` (
  `Descripcion` VARCHAR(45) NOT NULL ,
  `Turno` VARCHAR(1) NOT NULL ,
  `Cod_Curso` INT(2) NOT NULL ,
  `Cod_Carrera` INT(2) NOT NULL ,
  PRIMARY KEY (`Cod_Curso`, `Cod_Carrera`) ,
  INDEX `fk_curso_carrera1_idx` (`Cod_Carrera` ASC) ,
  CONSTRAINT `fk_curso_carrera1`
    FOREIGN KEY (`Cod_Carrera` )
    REFERENCES `isftwebappfinal`.`carrera` (`Cod_Carrera` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `isftwebappfinal`.`cursos_alumnos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `isftwebappfinal`.`cursos_alumnos` ;

CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`cursos_alumnos` (
  `Asistencia` TINYINT(1) NULL DEFAULT NULL ,
  `Regularizado` TINYINT(1) NULL DEFAULT NULL ,
  `Notareg` INT(2) NULL DEFAULT NULL ,
  `ModalidadInscripcion` VARCHAR(2) NULL DEFAULT NULL ,
  `Turno` VARCHAR(1) NULL ,
  `SituacionAcademica` VARCHAR(2) NULL DEFAULT NULL ,
  `Cod_Materia` INT(3) NOT NULL ,
  `Cod_Carrera` INT(2) NOT NULL ,
  `Legajo` INT(6) NOT NULL ,
  `Cod_Curso` INT(2) NOT NULL ,
  PRIMARY KEY (`Cod_Materia`, `Cod_Carrera`, `Legajo`, `Cod_Curso`) ,
  INDEX `fk_cursosAlumnos_materia1_idx` (`Cod_Materia` ASC) ,
  INDEX `fk_cursosAlumnos_carrera1_idx` (`Cod_Carrera` ASC) ,
  INDEX `fk_cursosAlumnos_Alumnos1_idx` (`Legajo` ASC) ,
  INDEX `fk_cursosAlumnos_curso1_idx` (`Cod_Curso` ASC) ,
  CONSTRAINT `fk_cursosAlumnos_materia1`
    FOREIGN KEY (`Cod_Materia` )
    REFERENCES `isftwebappfinal`.`materia` (`Cod_Materia` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cursosAlumnos_carrera1`
    FOREIGN KEY (`Cod_Carrera` )
    REFERENCES `isftwebappfinal`.`carrera` (`Cod_Carrera` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cursosAlumnos_Alumnos1`
    FOREIGN KEY (`Legajo` )
    REFERENCES `isftwebappfinal`.`alumnos` (`Legajo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cursosAlumnos_curso1`
    FOREIGN KEY (`Cod_Curso` )
    REFERENCES `isftwebappfinal`.`curso` (`Cod_Curso` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `isftwebappfinal`.`profesor`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `isftwebappfinal`.`profesor` ;

CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`profesor` (
  `legajoProfesor` INT(11) NOT NULL ,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL ,
  `Apellido` VARCHAR(45) NULL DEFAULT NULL ,
  `Direccion` VARCHAR(45) NULL DEFAULT NULL ,
  `Localidad` VARCHAR(45) NULL DEFAULT NULL ,
  `CP` VARCHAR(10) NULL DEFAULT NULL ,
  PRIMARY KEY (`legajoProfesor`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `isftwebappfinal`.`cursos_cantidad`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `isftwebappfinal`.`cursos_cantidad` ;

CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`cursos_cantidad` (
  `Lectivo` INT(4) NOT NULL ,
  `Cant_Alumnos` INT(3) NULL ,
  `legajoProfesor` INT(11) NOT NULL ,
  `Cod_Curso` INT(2) NOT NULL ,
  `Cod_Carrera` INT(2) NOT NULL ,
  `Cod_Materia` INT(3) NOT NULL ,
  PRIMARY KEY (`Lectivo`, `legajoProfesor`, `Cod_Curso`, `Cod_Carrera`, `Cod_Materia`) ,
  INDEX `fk_cursoscantidad_profesor1_idx` (`legajoProfesor` ASC) ,
  INDEX `fk_cursoscantidad_curso1_idx` (`Cod_Curso` ASC, `Cod_Carrera` ASC) ,
  INDEX `fk_cursoscantidad_materia1_idx` (`Cod_Materia` ASC) )
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `isftwebappfinal`.`dia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `isftwebappfinal`.`dia` ;

CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`dia` (
  `Dia` INT(2) NOT NULL ,
  `Descripcion` VARCHAR(10) NOT NULL ,
  PRIMARY KEY (`Dia`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `isftwebappfinal`.`examenes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `isftwebappfinal`.`examenes` ;

CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`examenes` (
  `ModalidadInscripcion` VARCHAR(2) NULL DEFAULT NULL ,
  `Fecha1` DATE NOT NULL ,
  `Fecha2` DATE NOT NULL ,
  `Turno` VARCHAR(2) NOT NULL ,
  `Cod_Materia` INT(3) NOT NULL ,
  `Cod_Carrera` INT(2) NOT NULL ,
  PRIMARY KEY (`Turno`, `Fecha2`, `Fecha1`, `Cod_Materia`, `Cod_Carrera`) ,
  INDEX `fk_examenes_materia1_idx` (`Cod_Materia` ASC, `Cod_Carrera` ASC) ,
  CONSTRAINT `fk_examenes_materia1`
    FOREIGN KEY (`Cod_Materia` , `Cod_Carrera` )
    REFERENCES `isftwebappfinal`.`materia` (`Cod_Materia` , `Cod_Carrera` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `isftwebappfinal`.`hora`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `isftwebappfinal`.`hora` ;

CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`hora` (
  `Hora_desde` TIMESTAMP NOT NULL ,
  `Hora_hasta` TIMESTAMP NOT NULL ,
  PRIMARY KEY (`Hora_desde`, `Hora_hasta`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `isftwebappfinal`.`horario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `isftwebappfinal`.`horario` ;

CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`horario` (
  `Dia` INT(2) NOT NULL ,
  `Hora_desde` DATETIME NOT NULL ,
  `Hora_hasta` DATETIME NOT NULL ,
  `lectivo` INT(4) NOT NULL ,
  `legajoProfesor` INT(11) NOT NULL ,
  `Cod_Curso` INT(2) NOT NULL ,
  `Cod_Carrera` INT(2) NOT NULL ,
  `Cod_Materia` INT(3) NOT NULL ,
  PRIMARY KEY (`Dia`, `Hora_desde`, `Hora_hasta`, `lectivo`, `legajoProfesor`, `Cod_Curso`, `Cod_Carrera`, `Cod_Materia`) ,
  INDEX `fk_horario_hora1_idx` (`Hora_desde` ASC, `Hora_hasta` ASC) ,
  INDEX `fk_horario_cursoscantidad1_idx` (`lectivo` ASC, `legajoProfesor` ASC, `Cod_Curso` ASC, `Cod_Carrera` ASC, `Cod_Materia` ASC) ,
  CONSTRAINT `fk_horarios_dia`
    FOREIGN KEY (`Dia` )
    REFERENCES `isftwebappfinal`.`dia` (`Dia` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_horario_hora1`
    FOREIGN KEY (`Hora_desde` , `Hora_hasta` )
    REFERENCES `isftwebappfinal`.`hora` (`Hora_desde` , `Hora_hasta` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_horario_cursoscantidad1`
    FOREIGN KEY (`lectivo` , `legajoProfesor` , `Cod_Curso` , `Cod_Carrera` , `Cod_Materia` )
    REFERENCES `isftwebappfinal`.`cursos_cantidad` (`Lectivo` , `legajoProfesor` , `Cod_Curso` , `Cod_Carrera` , `Cod_Materia` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `isftwebappfinal`.`libro_matriz`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `isftwebappfinal`.`libro_matriz` ;

CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`libro_matriz` (
  `Regularizado` TINYINT(1) NULL DEFAULT NULL ,
  `Fecha_Reg` DATE NULL DEFAULT NULL ,
  `Nota_Final` INT(2) NULL DEFAULT NULL ,
  `Fecha_Final` DATE NULL DEFAULT NULL ,
  `LibroActExamen` INT(3) NULL DEFAULT NULL ,
  `FolioActExamen` INT(3) NULL DEFAULT NULL ,
  `Folio_Matriz` INT(3) NULL DEFAULT NULL ,
  `Libro_Matriz` INT(3) NULL DEFAULT NULL ,
  `Cod_Materia` INT(3) NOT NULL ,
  `Cod_Carrera` INT(2) NOT NULL ,
  `Legajo` INT(6) NOT NULL ,
  PRIMARY KEY (`Cod_Materia`, `Cod_Carrera`, `Legajo`) ,
  INDEX `fk_LibroMatriz_Alumnos1_idx` (`Legajo` ASC) ,
  CONSTRAINT `fk_LibroMatriz_materia1`
    FOREIGN KEY (`Cod_Materia` , `Cod_Carrera` )
    REFERENCES `isftwebappfinal`.`materia` (`Cod_Materia` , `Cod_Carrera` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_LibroMatriz_Alumnos1`
    FOREIGN KEY (`Legajo` )
    REFERENCES `isftwebappfinal`.`alumnos` (`Legajo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `isftwebappfinal`.`nota_examen`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `isftwebappfinal`.`nota_examen` ;

CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`nota_examen` (
  `Fecha_Examen` DATE NOT NULL ,
  `Nota_Final` INT(11) NULL DEFAULT NULL ,
  `Asistencia` TINYINT(1) NULL DEFAULT true ,
  `Fecha_inscripcion` DATE NOT NULL ,
  `LibroActExamen` INT(11) NULL ,
  `FolioActExamen` INT(11) NULL DEFAULT NULL ,
  `SemiPresencial` TINYINT(1) NULL DEFAULT false ,
  `Turno` VARCHAR(45) NOT NULL ,
  `ModalidadInscripcion` VARCHAR(45) NOT NULL DEFAULT 'PR' ,
  `Cod_Materia` INT(3) NOT NULL ,
  `Cod_Carrera` INT(2) NOT NULL ,
  `Legajo` INT(11) NOT NULL ,
  PRIMARY KEY (`Fecha_Examen`, `Cod_Materia`, `Cod_Carrera`, `Legajo`) ,
  INDEX `fk_Nota_Examenes_materia1_idx` (`Cod_Materia` ASC, `Cod_Carrera` ASC) ,
  INDEX `fk_Nota_Examenes_Alumnos1_idx` (`Legajo` ASC) ,
  CONSTRAINT `fk_Nota_Examenes_materia1`
    FOREIGN KEY (`Cod_Materia` , `Cod_Carrera` )
    REFERENCES `isftwebappfinal`.`materia` (`Cod_Materia` , `Cod_Carrera` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Nota_Examenes_Alumnos1`
    FOREIGN KEY (`Legajo` )
    REFERENCES `isftwebappfinal`.`alumnos` (`Legajo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `isftwebappfinal`.`mensaje`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `isftwebappfinal`.`mensaje` ;

CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`mensaje` (
  `id_mensaje` INT NOT NULL AUTO_INCREMENT ,
  `titulo` VARCHAR(30) NOT NULL ,
  `mensaje` VARCHAR(150) NOT NULL ,
  `fecha` DATETIME NOT NULL ,
  `respondido` TINYINT(1) NOT NULL DEFAULT 0 ,
  `Legajo` INT(6) NOT NULL ,
  `Cod_Carrera` INT(2) NOT NULL ,
  PRIMARY KEY (`id_mensaje`) ,
  INDEX `fk_mensaje_alumnos1_idx` (`Legajo` ASC, `Cod_Carrera` ASC) ,
  CONSTRAINT `fk_mensaje_alumnos1`
    FOREIGN KEY (`Legajo` , `Cod_Carrera` )
    REFERENCES `isftwebappfinal`.`alumnos` (`Legajo` , `Cod_Carrera` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `isftwebappfinal`.`respuesta_mensaje`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `isftwebappfinal`.`respuesta_mensaje` ;

CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`respuesta_mensaje` (
  `id_respuesta` INT NOT NULL AUTO_INCREMENT ,
  `id_mensaje` INT NOT NULL ,
  `respuesta` VARCHAR(200) NOT NULL ,
  `fecha_respuesta` DATETIME NOT NULL ,
  PRIMARY KEY (`id_respuesta`, `id_mensaje`) ,
  INDEX `fk_respuesta_mensaje_mensaje1_idx` (`id_mensaje` ASC) ,
  CONSTRAINT `fk_respuesta_mensaje_mensaje1`
    FOREIGN KEY (`id_mensaje` )
    REFERENCES `isftwebappfinal`.`mensaje` (`id_mensaje` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `isftwebappfinal` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
