SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `mydb` ;
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`CLIENTE`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`CLIENTE` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`CLIENTE` (
  `idCLIENTE` INT NOT NULL AUTO_INCREMENT ,
  `apellido` VARCHAR(45) NULL ,
  `nombre` VARCHAR(45) NULL ,
  PRIMARY KEY (`idCLIENTE`) ,
  UNIQUE INDEX `idCLIENTE_UNIQUE` (`idCLIENTE` ASC) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Auto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Auto` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`Auto` (
  `idAuto` INT NOT NULL ,
  `patente` INT NULL ,
  `modelo` VARCHAR(45) NULL ,
  `color` VARCHAR(45) NULL ,
  `CLIENTE_idCLIENTE` INT NOT NULL ,
  PRIMARY KEY (`idAuto`) ,
  UNIQUE INDEX `patente_UNIQUE` (`patente` ASC) ,
  INDEX `fk_Auto_CLIENTE_idx` (`CLIENTE_idCLIENTE` ASC) ,
  CONSTRAINT `fk_Auto_CLIENTE`
    FOREIGN KEY (`CLIENTE_idCLIENTE` )
    REFERENCES `mydb`.`CLIENTE` (`idCLIENTE` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `mydb` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
