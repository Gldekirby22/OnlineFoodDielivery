CREATE DATABASE food_delivery;

USE food_delivery;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS admins;
DROP TABLE IF EXISTS cart;

CREATE TABLE menu (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    photo_path VARCHAR(255)
);

CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('Pending', 'Preparing', 'Ready', 'Completed', 'Cancelled') DEFAULT 'Pending'
);

CREATE TABLE order_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    item_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (item_id) REFERENCES menu(id)
);