CREATE DATABASE IF NOT EXISTS `example_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `example_db`;

-- Drop tables if they exist
DROP TABLE IF EXISTS `example_table`;

-- Table: example_table
CREATE TABLE `example_table` (
  `id` INT AUTO_INCREMENT NOT NULL,                -- Standard INT for primary key
  `age` SMALLINT UNSIGNED DEFAULT NULL,                -- SMALLINT for small positive integers
  `score` MEDIUMINT NOT NULL,                      -- MEDIUMINT for medium-sized integers
  `temperature` FLOAT(5, 2) NOT NULL,              -- FLOAT for numbers with decimals
  `description` VARCHAR(255) DEFAULT NULL,         -- VARCHAR for text
  `created_at` DATETIME DEFAULT CURRENT_TIMESTAMP, -- DATETIME for timestamps
  PRIMARY KEY (`id`)
);




