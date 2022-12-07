SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


-- -----------------------------------------------------
-- Schema bookstore
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bookstore` DEFAULT CHARACTER SET utf8 ;
USE `bookstore` ;

-- -----------------------------------------------------
-- Table `bookstore`.`book`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`book` (
  `book_id` CHAR(13) NOT NULL,
  `title` VARCHAR(45) NOT NULL,
  `page` INT UNSIGNED NOT NULL,
  `price` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`book_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bookstore`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`customer` (
  `customer_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bookstore`.`author_list`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`author_list` (
  `book_id` CHAR(13) NOT NULL,
  `author` VARCHAR(45) NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bookstore`.`topic_list`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`topic_list` (
  `book_id` CHAR(13) NOT NULL,
  `topic` VARCHAR(45) NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bookstore`.`related_topic_list`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`related_topic_list` (
  `topic` VARCHAR(45) NOT NULL,
  `related_topic` VARCHAR(45) NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bookstore`.`publisher`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`publisher` (
  `name` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`name`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bookstore`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`orders` (
  `orders_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `review` VARCHAR(45) NULL,
  `grade` INT UNSIGNED NULL,
  `book_id` CHAR(13) NOT NULL,
  `customer_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`orders_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bookstore`.`publishing`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `bookstore`.`publishing` (
  `book_id` CHAR(13) NOT NULL,
  `date` VARCHAR(45) NOT NULL,
  `publisher_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`book_id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
