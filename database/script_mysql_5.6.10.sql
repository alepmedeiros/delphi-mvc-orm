SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`cad_pessoa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`cad_pessoa` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`cad_pessoa` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `nome_pessoa` VARCHAR(60) NOT NULL ,
  `data_nasc_reg` DATE NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`cad_cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`cad_cliente` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`cad_cliente` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `id_pessoa` INT NOT NULL ,
  `tipo` VARCHAR(60) NULL ,
  `cpf_cnpj` VARCHAR(60) NULL ,
  `email` VARCHAR(100) NULL ,
  `telefone` VARCHAR(100) NULL ,
  `foto` BLOB NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `id_pessoa` (`id_pessoa` ASC) ,
  CONSTRAINT `cliente_FK`
    FOREIGN KEY (`id_pessoa` )
    REFERENCES `mydb`.`cad_pessoa` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`cad_endereco`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`cad_endereco` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`cad_endereco` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `id_pessoa` INT NOT NULL ,
  `logradouro` VARCHAR(60) NULL ,
  `numero` VARCHAR(60) NULL ,
  `complemento` VARCHAR(60) NULL ,
  `cidade` VARCHAR(60) NULL ,
  `bairro` VARCHAR(60) NULL ,
  `estado` VARCHAR(2) NULL ,
  `tipo` VARCHAR(60) NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `id_pessoa` (`id_pessoa` ASC) ,
  CONSTRAINT `endereco_FK`
    FOREIGN KEY (`id_pessoa` )
    REFERENCES `mydb`.`cad_pessoa` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`cad_produto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`cad_produto` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`cad_produto` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `nome_produto` VARCHAR(60) NOT NULL ,
  `vr_venda` DECIMAL(17,2) NULL ,
  `foto` BLOB NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`lac_pedido`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`lac_pedido` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`lac_pedido` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `id_cliente` INT NOT NULL ,
  `data_emissao` DATE NULL ,
  `vr_total` DECIMAL(17,2) NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `id_cliente` (`id_cliente` ASC) ,
  CONSTRAINT `pedido_FK`
    FOREIGN KEY (`id_cliente` )
    REFERENCES `mydb`.`cad_cliente` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`lac_pedido_itens`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`lac_pedido_itens` ;

CREATE  TABLE IF NOT EXISTS `mydb`.`lac_pedido_itens` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `id_pedido` INT NOT NULL ,
  `id_produto` INT NOT NULL ,
  `quant` INT NULL ,
  `valor` DECIMAL(17,2) NULL ,
  `vr_total` DECIMAL(17,2) NULL ,
  PRIMARY KEY (`id`) ,
  INDEX `id_pedido` (`id_pedido` ASC) ,
  INDEX `id_produto` (`id_produto` ASC) ,
  CONSTRAINT `pedido_itens_FK1`
    FOREIGN KEY (`id_pedido` )
    REFERENCES `mydb`.`lac_pedido` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `pedido_itens_FK2`
    FOREIGN KEY (`id_produto` )
    REFERENCES `mydb`.`cad_produto` (`id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `mydb` ;
USE `mydb`;

DELIMITER $$

USE `mydb`$$
DROP TRIGGER IF EXISTS `mydb`.`lac_pedido_BEFORE_INSERT` $$
USE `mydb`$$
CREATE DEFINER = CURRENT_USER TRIGGER `mydb`.`lac_pedido_BEFORE_INSERT` BEFORE INSERT ON `lac_pedido` FOR EACH ROW 
BEGIN
    IF NEW.data_emissao IS NULL THEN
        SET NEW.data_emissao = CURRENT_DATE();
    END IF;
END;$$


DELIMITER ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
