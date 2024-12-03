-- Create table with all data types defined in the mapToSequelizeType function
CREATE TABLE `example_table` (
    `id` INT AUTO_INCREMENT  NOT NULL,  -- INT

    -- String types
    `varchar_col` VARCHAR(255),            -- VARCHAR
    `tinytext_col` TINYTEXT,               -- TINYTEXT
    `mediumtext_col` MEDIUMTEXT,           -- MEDIUMTEXT
    `longtext_col` LONGTEXT,               -- LONGTEXT
    
    -- Numeric types
    `int_col` INT,                         -- INT
    `bigint_col` BIGINT,                   -- BIGINT
    `smallint_col` SMALLINT,               -- SMALLINT
    `mediumint_col` MEDIUMINT,             -- MEDIUMINT
    `float_col` FLOAT,                     -- FLOAT
    `double_col` DOUBLE,                   -- DOUBLE
    `decimal_col` DECIMAL(10,2),           -- DECIMAL (with precision and scale)
    
    -- Date and time types
    `date_col` DATE,                       -- DATE
    `datetime_col` DATETIME,               -- DATETIME
    `timestamp_col` TIMESTAMP,             -- TIMESTAMP
    
    -- Boolean types (tinyint with length 1 for true/false)
    `tinyint_col` TINYINT(1),              -- TINYINT(1) for boolean-like values
    
    -- Enum type
    `enum_col` ENUM('value1', 'value2', 'value3'),  -- ENUM
    `status` ENUM('active', 'inactive', 'pending') NOT NULL,
    `tags` SET('electronics', 'furniture', 'clothing'),
    
    -- Binary types
    `blob_col` BLOB,                       -- BLOB (binary data up to 65,535 bytes)
    `tinyblob_col` TINYBLOB,               -- TINYBLOB (binary data up to 255 bytes)
    `mediumblob_col` MEDIUMBLOB,           -- MEDIUMBLOB (binary data up to 16 MB)
    `longblob_col` LONGBLOB,               -- LONGBLOB (binary data up to 4 GB)

    -- Other columns
    `rating` FLOAT(5,2),                   -- FLOAT (with precision and scale)
    `price` DECIMAL(15,2),                 -- DECIMAL (with precision and scale)
    `status` VARCHAR(100),                 -- VARCHAR (status column)
    `is_active` BOOLEAN,                   -- BOOLEAN (true/false)
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- TIMESTAMP with default value
    `updated_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP , -- TIMESTAMP with auto-update
    PRIMARY KEY (`id`)
);


