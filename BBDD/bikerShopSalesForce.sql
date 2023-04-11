/*BIKERSHOP SALES FORCE*/
/*NAME: LEONEL BRIONES PALACIOS*/
/*DATE: 11.ABR.2023*/

/*CREAR DATABASE M5-BIKERSHOP;*/
DROP DATABASE IF EXISTS M5_BIKERSHOP;
CREATE DATABASE M5_BIKERSHOP;

/*USAR BASE DE DATOS M5-BIKERSHOP*/
USE M5_BIKERSHOP;

/*CREACION DE TABLA customers*/
CREATE TABLE customers(
	customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(15),
    email VARCHAR(50),
    street VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    zip_code INT
);

/*CREACIÓN DE TABLA ORDERS*/
CREATE TABLE orders(
	order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    customer_id INT, /*FK customer OK*/
    order_status INT,
    order_date DATE,
    required_date DATE,
    shipped_date DATE,
    store_id INT, /*FK stores OK*/
    staff_id INT /*FK staff OK*/
);


/*CREACION DE TABLA staffs*/
CREATE TABLE staffs(
	staff_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
	last_name VARCHAR(50),
    email VARCHAR(50),
    phone VARCHAR(50),
    active BOOL,
    store_id INT, /*FK store OK*/
    manager_id INT /*TRIGGER OK*/
);

/*CREACION DE TABLA stores*/
CREATE TABLE stores(
	store_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    store_name VARCHAR(50),
    phone VARCHAR(50),
    email VARCHAR(50),
    street VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50),
    zip_code VARCHAR(50)
);

/*CREACIÓN DE LA TABLA order_items*/
CREATE TABLE order_items(
	order_id INT NOT NULL, /*FK order OK*/
    item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    product_id INT, /*FK products OK*/
    quantity INT,
    list_price INT,
    discount INT
);

/*CREACIÓN DE LA TABLA categories*/
CREATE TABLE categories(
	category_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50)
);

/*CRACIÓN DE LA TABLA products*/
CREATE TABLE products(
	product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50),
    brand_id INT, /*FK brands OK*/
    category_id INT, /*FK category OK*/
    model_year INT,
    list_price INT
);

/*CREACIÓN DE LA TABLA stocks*/
/*? La tabla stocks contiene la cantidad del producto en existencia en cada una de las tiendas.*/
CREATE TABLE stocks(
	store_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT
);

/*CREACIÓN DE LA TABLA brands*/
CREATE TABLE brands(
	brand_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(50)
);

/**/

/*CREAR FOREIGN KEY TABLA orders CAMPO customer_id CON LA TABLA customer*/
ALTER TABLE orders
ADD CONSTRAINT ORDERS_idfk_CUSTOMERS
FOREIGN KEY (customer_id) REFERENCES customers(customer_id);

/*CREAR FOREIGN KEY TABLA orders CAMPO store_id CON LA TABLA stores*/
ALTER TABLE orders
ADD CONSTRAINT ORDERS_ibfk_STORES
FOREIGN KEY (store_id) REFERENCES stores (store_id);

/*CREAR FOREIGN KEY staff_id CON LA TABLA staff*/
ALTER TABLE orders
ADD CONSTRAINT ORDERS_idfk_STAFF
FOREIGN KEY (staff_id) REFERENCES staffs(staff_id);

/*CREAR FOREIGN KEY staff CON LA TABLA store*/
ALTER TABLE staffs
ADD CONSTRAINT STAFF_idfk_STORE
FOREIGN KEY (store_id) REFERENCES stores(store_id);

/*CREAR FOREIGN KEY TABLA order_items CAMPO order_id CON LA TABLA order*/
ALTER TABLE order_items
ADD CONSTRAINT ORDER_ITEMS_idfk_ORDERS
FOREIGN KEY(order_id) REFERENCES orders(order_id);

/*CREAR FOREIGN KEY TABLA order_items CAMPO product_id CON TABLA products*/
ALTER TABLE order_items
ADD CONSTRAINT ORDER_ITEMS_idfk_PRODUCTS
FOREIGN KEY(product_id) REFERENCES products(product_id);

/*CREAR FOREIGN KEY TABLA products CAMPO brand_id CON LA TABLA brands*/
ALTER TABLE products
ADD CONSTRAINT PRODUCTS_ibfk_BRANDS
FOREIGN KEY(brand_id) REFERENCES brands(brand_id);

/*CREAR FOREIGN KEY TABLA products CAMPO category_id CON LA TABLA categories */
ALTER TABLE products
ADD CONSTRAINT PRODUCTS_ibfk_CATEGORIES
FOREIGN KEY(category_id) REFERENCES categories(category_id);

/*TRIGGER ASEGURA QUE EL CAMPO manager_id SEA SIEMPRE EL MISMO QUE EL CAMPO staff_id*/
CREATE TRIGGER set_staff_id
BEFORE INSERT ON staffs
FOR EACH ROW
SET NEW.staff_id = NEW.manager_id;

/*LEONEL BRIONES PALACIOS*/
/*11.ABR.2023*/