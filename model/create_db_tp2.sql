SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `dbtp2` ;
CREATE SCHEMA IF NOT EXISTS `dbtp2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `dbtp2` ;

-- -----------------------------------------------------
-- Table `dbtp2`.`Cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dbtp2`.`Cliente` ;

CREATE  TABLE IF NOT EXISTS `dbtp2`.`Cliente` (
  `idCliente` INT NOT NULL ,
  `nombre` VARCHAR(45) NOT NULL ,
  `apellido` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idCliente`) ,
  UNIQUE INDEX `idCliente_UNIQUE` (`idCliente` ASC) )
ENGINE = InnoDB;

USE `dbtp2` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
