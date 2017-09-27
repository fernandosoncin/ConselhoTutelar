-- MySQL Script generated by MySQL Workbench
-- 09/15/17 15:01:51
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema ConselhoTutelar
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ConselhoTutelar
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ConselhoTutelar` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `ConselhoTutelar` ;

-- -----------------------------------------------------
-- Table `ConselhoTutelar`.`Conselheiro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ConselhoTutelar`.`Conselheiro` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(50) NULL,
  `Telefone` VARCHAR(15) NULL,
  `Celular` VARCHAR(15) NULL,
  `Login` VARCHAR(25) NULL,
  `Senha` VARCHAR(25) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ConselhoTutelar`.`Direitos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ConselhoTutelar`.`Direitos` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Numero` VARCHAR(10) NULL,
  `Descricao` VARCHAR(100) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ConselhoTutelar`.`Requerente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ConselhoTutelar`.`Requerente` (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(50) NULL,
  `Nascimento` VARCHAR(15) NULL,
  `Telefone1` VARCHAR(15) NULL,
  `Telefone2` VARCHAR(15) NULL,
  `Celular` VARCHAR(15) NULL,
  `Endereco` VARCHAR(45) NULL,
  `Numero` VARCHAR(10) NULL,
  `Bairro` VARCHAR(45) NULL,
  `Cidade` VARCHAR(20) NULL,
  `Estado` VARCHAR(15) NULL,
  `EstadoCivil` VARCHAR(15) NULL,
  `Observacao` VARCHAR(100) NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

insert into Conselheiro values(null,"root","telefone","celular","root","root");