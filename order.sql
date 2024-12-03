CREATE DATABASE IF NOT EXISTS `sample_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `sample_db`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

-- Drop tables if they exist
DROP TABLE IF EXISTS `product`;
DROP TABLE IF EXISTS `order`;

-- Table 1: Product (Using ENUM for product category and SET for tags)
CREATE TABLE `product` (
  `product_id` INT AUTO_INCREMENT NOT NULL,
  `product_name` VARCHAR(255) NOT NULL,
  `category` ENUM('electronics', 'furniture', 'clothing', 'books') NOT NULL COMMENT 'Product categories (one value only)',
  `tags` SET('new', 'sale', 'popular', 'limited') DEFAULT NULL COMMENT 'Tags for the product (multiple values allowed)',
  `price` DECIMAL(10,2) NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`)
);

-- Table 2: Order (Referencing products and adding ENUM for status)
CREATE TABLE `order` (
  `order_id` INT AUTO_INCREMENT NOT NULL,
  `product_id` INT NOT NULL,
  `status` ENUM('pending', 'completed', 'cancelled') NOT NULL COMMENT 'Order status',
  `quantity` INT NOT NULL,
  `total_price` DECIMAL(12,2) NOT NULL,
  `order_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`),
  FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE
);


