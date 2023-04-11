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
    customer_id INT, /*FK customer*/
    order_status INT,
    order_date DATE,
    required_date DATE,
    shipped_date DATE,
    store_id INT, /*FK stores*/
    staff_id INT /*FK staff*/
);

/*CREACION DE TABLA staffs*/
CREATE TABLE staffs(
	staff_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
	last_name VARCHAR(50),
    email VARCHAR(50),
    phone VARCHAR(50),
    active BOOL,
    store_id INT, /*FK store*/
    manager_id INT /*? El maestro de empleados (tabla staff) almacena una relación jerárquica entre los empleados a través del campo manager_id*/
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
	order_id INT NOT NULL, /*FK order*/
    item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    product_id INT, /*FK products*/
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
    brand_id INT, /*FK brands*/
    category_id INT, /*FK category*/
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