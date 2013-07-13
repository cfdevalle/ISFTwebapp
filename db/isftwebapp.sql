SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `isftwebappfinal` DEFAULT CHARACTER SET utf8 ;
USE `isftwebappfinal` ;

-- -----------------------------------------------------
-- Table `isftwebappfinal`.`alumnos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`alumnos` (
  `Legajo` INT(11) NOT NULL ,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL ,
  `Apellido` VARCHAR(45) NULL DEFAULT NULL ,
  `Direccion` VARCHAR(45) NULL DEFAULT NULL ,
  `Localidad` VARCHAR(45) NULL DEFAULT NULL ,
  `CP` VARCHAR(45) NULL DEFAULT NULL ,
  `Lectivo` VARCHAR(45) NULL DEFAULT NULL ,
  `Sexo` VARCHAR(45) NULL DEFAULT NULL ,
  `pwd` VARCHAR(45) NULL DEFAULT NULL ,
  `Cod_Carrera` INT(11) NOT NULL ,
  PRIMARY KEY (`Legajo`, `Cod_Carrera`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `isftwebappfinal`.`carrera`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`carrera` (
  `Cod_Carrera` INT(11) NOT NULL ,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL ,
  `Descripcion` VARCHAR(45) NULL DEFAULT NULL ,
  `Cant_Mat` VARCHAR(45) NULL DEFAULT NULL ,
  PRIMARY KEY (`Cod_Carrera`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `isftwebappfinal`.`materia`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`materia` (
  `Cod_Materia` INT(11) NOT NULL ,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL ,
  `ModalidadCursada` VARCHAR(45) NULL DEFAULT NULL ,
  `Cod_Carrera` INT(11) NOT NULL ,
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
CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`correlativa` (
  `Cod_Correlativa` INT(11) NOT NULL ,
  `Cod_Materia` INT(11) NOT NULL ,
  `Cod_Carrera` INT(11) NOT NULL ,
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
CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`curso` (
  `Descripcion` VARCHAR(45) NULL DEFAULT NULL ,
  `Turno` VARCHAR(45) NOT NULL ,
  `Cod_Curso` INT(11) NOT NULL ,
  `Cod_Carrera` INT(11) NOT NULL ,
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
-- Table `isftwebappfinal`.`cursosalumnos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`cursosalumnos` (
  `Asistencia` INT(11) NULL DEFAULT NULL ,
  `Regularizado` VARCHAR(45) NULL DEFAULT NULL ,
  `Notareg` INT(11) NULL DEFAULT NULL ,
  `ModalidadInscripcion` VARCHAR(45) NULL DEFAULT NULL ,
  `Turno` VARCHAR(45) NULL DEFAULT NULL ,
  `SituacionAcademica` VARCHAR(45) NULL DEFAULT NULL ,
  `Cod_Materia` INT(11) NOT NULL ,
  `Cod_Carrera` INT(11) NOT NULL ,
  `Alumnos_Legajo` INT(11) NOT NULL ,
  `Cod_Curso` INT(11) NOT NULL ,
  PRIMARY KEY (`Cod_Materia`, `Cod_Carrera`, `Alumnos_Legajo`, `Cod_Curso`) ,
  INDEX `fk_cursosAlumnos_materia1_idx` (`Cod_Materia` ASC) ,
  INDEX `fk_cursosAlumnos_carrera1_idx` (`Cod_Carrera` ASC) ,
  INDEX `fk_cursosAlumnos_Alumnos1_idx` (`Alumnos_Legajo` ASC) ,
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
    FOREIGN KEY (`Alumnos_Legajo` )
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
CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`profesor` (
  `legajoProfesor` INT(11) NOT NULL ,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL ,
  `Apellido` VARCHAR(45) NULL DEFAULT NULL ,
  `Direccion` VARCHAR(45) NULL DEFAULT NULL ,
  `Localidad` VARCHAR(45) NULL DEFAULT NULL ,
  `CP` VARCHAR(45) NULL DEFAULT NULL ,
  PRIMARY KEY (`legajoProfesor`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `isftwebappfinal`.`cursoscantidad`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`cursoscantidad` (
  `Lectivo` VARCHAR(45) NOT NULL ,
  `Cant_Alumnos` INT(11) NULL DEFAULT NULL ,
  `legajoProfesor` INT(11) NOT NULL ,
  `Cod_Curso` INT(11) NOT NULL ,
  `Cod_Carrera` INT(11) NOT NULL ,
  `Cod_Materia` INT(11) NOT NULL ,
  PRIMARY KEY (`Lectivo`, `legajoProfesor`, `Cod_Curso`, `Cod_Carrera`, `Cod_Materia`) ,
  INDEX `fk_cursoscantidad_profesor1_idx` (`legajoProfesor` ASC) ,
  INDEX `fk_cursoscantidad_curso1_idx` (`Cod_Curso` ASC, `Cod_Carrera` ASC) ,
  INDEX `fk_cursoscantidad_materia1_idx` (`Cod_Materia` ASC) )
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `isftwebappfinal`.`dia`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`dia` (
  `Dia` VARCHAR(45) NOT NULL ,
  `Descripcion` VARCHAR(45) NULL ,
  PRIMARY KEY (`Dia`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `isftwebappfinal`.`examenes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`examenes` (
  `ModalidadInscripcion` INT(11) NULL DEFAULT NULL ,
  `Fecha1` DATE NOT NULL ,
  `Fecha2` DATE NOT NULL ,
  `Turno` VARCHAR(45) NOT NULL ,
  `Cod_Materia` INT(11) NOT NULL ,
  `Cod_Carrera` INT(11) NOT NULL ,
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
CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`hora` (
  `Hora_desde` TIME NOT NULL ,
  `Hora_hasta` TIME NOT NULL ,
  PRIMARY KEY (`Hora_desde`, `Hora_hasta`) )
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `isftwebappfinal`.`horario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`horario` (
  `Dia` VARCHAR(45) NOT NULL ,
  `Hora_desde` TIME NOT NULL ,
  `Hora_hasta` TIME NOT NULL ,
  `Lectivo` VARCHAR(45) NOT NULL ,
  `llegajoProfesor` INT(11) NOT NULL ,
  `Cod_Curso` INT(11) NOT NULL ,
  `Cod_Carrera` INT(11) NOT NULL ,
  `Cod_Materia` INT(11) NOT NULL ,
  PRIMARY KEY (`Dia`, `Hora_desde`, `Hora_hasta`, `Lectivo`, `llegajoProfesor`, `Cod_Curso`, `Cod_Carrera`, `Cod_Materia`) ,
  INDEX `fk_horario_hora1_idx` (`Hora_desde` ASC, `Hora_hasta` ASC) ,
  INDEX `fk_horario_cursoscantidad1_idx` (`Lectivo` ASC, `llegajoProfesor` ASC, `Cod_Curso` ASC, `Cod_Carrera` ASC, `Cod_Materia` ASC) ,
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
    FOREIGN KEY (`Lectivo` , `llegajoProfesor` , `Cod_Curso` , `Cod_Carrera` , `Cod_Materia` )
    REFERENCES `isftwebappfinal`.`cursoscantidad` (`Lectivo` , `legajoProfesor` , `Cod_Curso` , `Cod_Carrera` , `Cod_Materia` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `isftwebappfinal`.`libromatriz`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`libromatriz` (
  `Regularizado` VARCHAR(45) NULL DEFAULT NULL ,
  `Fecha_Reg` DATE NULL DEFAULT NULL ,
  `Nota_Final` INT(11) NULL DEFAULT NULL ,
  `Fecha_Final` DATE NULL DEFAULT NULL ,
  `LibroActExamen` INT(11) NULL DEFAULT NULL ,
  `FolioActExamen` INT(11) NULL DEFAULT NULL ,
  `Folio_Matriz` INT(11) NULL DEFAULT NULL ,
  `Libro_Matriz` INT(11) NULL DEFAULT NULL ,
  `Cod_Materia` INT(11) NOT NULL ,
  `Cod_Carrera` INT(11) NOT NULL ,
  `Alumnos_Legajo` INT(11) NOT NULL ,
  PRIMARY KEY (`Cod_Materia`, `Cod_Carrera`, `Alumnos_Legajo`) ,
  INDEX `fk_LibroMatriz_Alumnos1_idx` (`Alumnos_Legajo` ASC) ,
  CONSTRAINT `fk_LibroMatriz_materia1`
    FOREIGN KEY (`Cod_Materia` , `Cod_Carrera` )
    REFERENCES `isftwebappfinal`.`materia` (`Cod_Materia` , `Cod_Carrera` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_LibroMatriz_Alumnos1`
    FOREIGN KEY (`Alumnos_Legajo` )
    REFERENCES `isftwebappfinal`.`alumnos` (`Legajo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `isftwebappfinal`.`nota_examenes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `isftwebappfinal`.`nota_examenes` (
  `Fecha_Examen` DATE NOT NULL ,
  `Nota_Final` INT(11) NULL DEFAULT NULL ,
  `Asistencia` VARCHAR(45) NULL DEFAULT NULL ,
  `Fecha_inscripcion` DATE NOT NULL ,
  `LibroActExamen` INT(11) NULL DEFAULT NULL ,
  `FolioActExamen` INT(11) NULL DEFAULT NULL ,
  `SemiPresencial` VARCHAR(45) NULL DEFAULT NULL ,
  `Turno` VARCHAR(45) NULL DEFAULT NULL ,
  `ModalidadInscripcion` VARCHAR(45) NULL DEFAULT NULL ,
  `Cod_Materia` INT(11) NOT NULL ,
  `Cod_Carrera` INT(11) NOT NULL ,
  `Alumnos_Legajo` INT(11) NOT NULL ,
  PRIMARY KEY (`Fecha_Examen`, `Cod_Materia`, `Cod_Carrera`, `Alumnos_Legajo`) ,
  INDEX `fk_Nota_Examenes_materia1_idx` (`Cod_Materia` ASC, `Cod_Carrera` ASC) ,
  INDEX `fk_Nota_Examenes_Alumnos1_idx` (`Alumnos_Legajo` ASC) ,
  CONSTRAINT `fk_Nota_Examenes_materia1`
    FOREIGN KEY (`Cod_Materia` , `Cod_Carrera` )
    REFERENCES `isftwebappfinal`.`materia` (`Cod_Materia` , `Cod_Carrera` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Nota_Examenes_Alumnos1`
    FOREIGN KEY (`Alumnos_Legajo` )
    REFERENCES `isftwebappfinal`.`alumnos` (`Legajo` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

USE `isftwebappfinal` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
