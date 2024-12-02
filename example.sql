-- example_schema.sql
CREATE DATABASE IF NOT EXISTS example_db;

USE example_db;

-- Create a table that uses SMALLINT, MEDIUMINT, and other types
CREATE TABLE example_table (
    id INT AUTO_INCREMENT PRIMARY KEY,     -- Standard INT for primary key
    age SMALLINT UNSIGNED,                 -- Unsigned SMALLINT for small positive numbers
    score MEDIUMINT,                       -- MEDIUMINT for medium range numbers
    temperature FLOAT(5, 2),               -- FLOAT for decimal numbers
    description VARCHAR(255),              -- VARCHAR for text
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP -- DATETIME for timestamp
);

