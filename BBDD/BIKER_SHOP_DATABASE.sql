/*
BIKERSHOP SALES FORCE
NAME: LEONEL BRIONES PALACIOS
DATE: 27.NOV.2023
*/

DROP DATABASE IF EXISTS BIKERS;
CREATE DATABASE BIKERS;
USE BIKERS;

/* PRODUCTION LAYER */
CREATE TABLE categories (
	category_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50)
);

CREATE TABLE products(
	product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    brand_id INT, /* FK BRANDS OK*/
    category_id INT, /* FK CATEGORY OK*/
    model_year INT, 
    list_price INT
);

CREATE TABLE stocks(
	store_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_id INT, /* FK PRODUCTS OK*/
    quantity INT
);

CREATE TABLE brands(
	brand_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(100)
);

/* SALES LAYER */
CREATE TABLE customers(
	customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(255) UNIQUE,
    street VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50),
    zip_code INT
);

CREATE TABLE orders(
	order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_id INT, /* FK CUSTOMERS OK */
    order_status INT,
    order_date date,
    required_date date,
    shipped_date date,
    store_id INT, /*FK STORES OK */
    staff_id INT /*FK STAFFS OK */
);

CREATE TABLE staffs(
	staff_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(100),
    email VARCHAR(255) UNIQUE,
    phone VARCHAR(15),
    active BOOL DEFAULT true,
    store_id INT, /* FK STORES OK */
    manager_id INT /* FK STAFF (staff_id) OK */
);

CREATE TABLE stores(
	store_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    store_name VARCHAR(50) UNIQUE,
    phone VARCHAR(15),
    email VARCHAR(255) UNIQUE,
    city VARCHAR(50),
    state VARCHAR(50),
    zip_code INT
);

CREATE TABLE order_items(
	order_id INT, /* FK ORDERS OK */
    item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_id INT, /* FK PRODUCTS OK */
    quantity INT,
    list_price INT,
    discount INT CHECK (discount >=0 AND discount <=100)
);

/* FOREIGN KEYS */
ALTER TABLE products
ADD FOREIGN KEY (brand_id) REFERENCES brands(brand_id);

ALTER TABLE products
ADD FOREIGN KEY (category_id) REFERENCES categories(category_id);

ALTER TABLE stocks
ADD FOREIGN KEY(product_id) REFERENCES products(product_id);

ALTER TABLE orders
ADD FOREIGN KEY(customer_id) REFERENCES customers(customer_id),
ADD FOREIGN KEY(store_id) REFERENCES stores(store_id),
ADD FOREIGN KEY(staff_id) REFERENCES staffs(staff_id);

ALTER TABLE staffs
ADD FOREIGN KEY(store_id) REFERENCES stores(store_id),
ADD FOREIGN KEY(manager_id) REFERENCES staffs(staff_id);

ALTER TABLE order_items
ADD FOREIGN KEY(order_id) REFERENCES orders(order_id),
ADD FOREIGN KEY(product_id) REFERENCES products(product_id);