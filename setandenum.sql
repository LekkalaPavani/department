-- Create a database (optional)
CREATE DATABASE IF NOT EXISTS `ExampleDB`;
USE `ExampleDB`;

-- Drop table if it already exists
DROP TABLE IF EXISTS `DemoTable`;

-- Create table with ENUM and SET data types
CREATE TABLE `DemoTable` (
    `id` INT AUTO_INCREMENT NOT NULL,
    `status` ENUM('active', 'inactive', 'pending') NOT NULL COMMENT 'Only one value can be selected from the list.',
    `tags` SET('electronics', 'furniture', 'clothing') COMMENT 'Multiple values can be selected from the list.',
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

