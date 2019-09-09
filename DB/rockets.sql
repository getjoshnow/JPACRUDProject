-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema rockets
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `rockets` ;

-- -----------------------------------------------------
-- Schema rockets
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `rockets` DEFAULT CHARACTER SET utf8 ;
USE `rockets` ;

-- -----------------------------------------------------
-- Table `rockets`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `rockets` ;

CREATE TABLE IF NOT EXISTS `rockets` (
  `idrockets` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `height` INT NOT NULL,
  `thrust` INT NOT NULL,
  `engines` INT NOT NULL,
  `company` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idrockets`))
ENGINE = InnoDB;

SET SQL_MODE = '';
GRANT USAGE ON *.* TO admin;
 DROP USER admin;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'admin' IDENTIFIED BY 'admin';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'admin';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `rockets`
-- -----------------------------------------------------
START TRANSACTION;
USE `rockets`;
INSERT INTO `rockets` (`idrockets`, `name`, `height`, `thrust`, `engines`, `company`) VALUES (1, 'falcon 9', 90, 50000, 9, 'Space X');
INSERT INTO `rockets` (`idrockets`, `name`, `height`, `thrust`, `engines`, `company`) VALUES (2, 'Falcon Heavy', 270, 100000, 27, 'Space X');
INSERT INTO `rockets` (`idrockets`, `name`, `height`, `thrust`, `engines`, `company`) VALUES (3, 'Delta 4', 110, 75000, 15, 'Boeing Lockhead');

COMMIT;
