-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

USE ecommerce_db;

CREATE TABLE Category (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(35) NOT NULL,
);

CREATE TABLE Product (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(35) NOT NULL,
    price DECIMAL(10,2) NOT NULL, -- VALIDATE DECIMAL
    stock INT(10) NOT NULL, --  VALIDATE NUMERBER
    category_id INT,
    FOREIGN KEY(category_id) REFERENCES Category(id),
);

CREATE TABLE Tag (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(35)
);

CREATE TABLE ProductTag (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    FOREIGN KEY(product_id) REFERENCES Product(id)
    tag_id INT,
    FOREIGN KEY(tag_id) REFERENCES Tag(id)
);
