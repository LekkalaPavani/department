CREATE DATABASE IF NOT EXISTS `sample_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `sample_db`;

-- Drop tables if they exist
DROP TABLE IF EXISTS `sample_table`;

-- Create sample table with various data types
CREATE TABLE `sample_table` (
  -- Integer types
  `id` INT AUTO_INCREMENT NOT NULL,             -- INT
  `small_int_col` SMALLINT,                        -- SMALLINT
  `medium_int_col` MEDIUMINT,                      -- MEDIUMINT
  `big_int_col` BIGINT,                            -- BIGINT
  
  -- Text types
  `short_text` TINYTEXT,                           -- TINYTEXT
  `medium_text` MEDIUMTEXT,                        -- MEDIUMTEXT
  `long_text` LONGTEXT,                            -- LONGTEXT
  `generic_text` TEXT,                             -- TEXT
  
  -- Date and Time types
  `created_at` DATETIME,                          -- DATETIME
  `updated_at` TIMESTAMP,                         -- TIMESTAMP
  `dob` DATE,                                     -- DATE
  `registration_date` DATE,                       -- DATEONLY (in Sequelize)

  -- Numeric types
  `price` DECIMAL(10, 2),                         -- DECIMAL
  `rating` DOUBLE,                                -- DOUBLE
  `float_value` FLOAT,                            -- FLOAT (added)
  
  -- Enum type
  `status` ENUM('active', 'inactive', 'suspended'), -- ENUM
  
  -- Boolean
  `is_active` BOOLEAN ,   -- BOOLEAN (mapped from TINYINT in MySQL)
  PRIMARY KEY (`id`)
  ) ;

