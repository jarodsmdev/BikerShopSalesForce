/*INSERTAR REGISTROS A LAS TABLAS*/
USE M5_BIKERSHOP;

/*TABLA categories*/
INSERT INTO categories
(category_name)
VALUES
("Categoría A"),
("Categoría B"),
("Categoría C"),
("Categoría D"),
("Categoría E");

/*TABLA brands*/
INSERT INTO brands
(brand_name)
VALUES
("Brand 1"),
("Brand 2"),
("Brand 3"),
("Brand 4"),
("Brand 5");

/*TABLA products*/
INSERT INTO products
(product_name, brand_id, category_id, model_year, list_price)
VALUES
('Product 1', 1, 1, 2022, 9.99),
('Product 2', 1, 1, 2022, 19.99),
('Product 3', 2, 2, 2021, 29.99),
('Product 4', 2, 2, 2021, 39.99),
('Product 5', 3, 3, 2020, 49.99),
('Product 6', 3, 3, 2020, 59.99),
('Product 7', 4, 4, 2019, 69.99),
('Product 8', 4, 4, 2019, 79.99),
('Product 9', 5, 5, 2018, 89.99),
('Product 10', 5, 5, 2018, 99.99);

/*TABLA stores*/
INSERT INTO stores 
(store_name, phone, email, street, city, state, zip_code)
VALUES
("Store A", "123-456-7890", "storea@gmail.com", "123 Main St", "Anytown", "CA", "12345"),
("Store B", "234-567-8901", "storeb@outlook.com", "456 Oak Ave", "Anycity", "NY", "23456"),
("Store C", "345-678-9012", "storec@hotmail.com", "789 Elm St", "Anyville", "TX", "34567"),
("Store D", "456-789-0123", "stored@yahoo.com", "321 Pine St", "Anystate", "FL", "45678"),
("Store E", "567-890-1234", "storee@protonmail.com", "654 Maple Ave", "Anycity", "IL", "56789"),
("Store F", "678-901-2345", "storef@live.com", "987 Cedar St", "Anytown", "MI", "67890"),
("Store G", "789-012-3456", "storeg@icloud.com", "246 Birch Rd", "Anyville", "OH", "78901"),
("Store H", "890-123-4567", "storeh@yandex.com", "369 Oak St", "Anystate", "PA", "89012"),
("Store I", "901-234-5678", "storei@protonmail.com", "582 Elm Ave", "Anycity", "WA", "90123"),
("Store J", "012-345-6789", "storej@outlook.com", "753 Pine St", "Anytown", "VA", "01234"),
("Store K", "234-567-8901", "storek@yahoo.com", "456 Oak Ave", "Anycity", "CA", "23456"),
("Store L", "345-678-9012", "storel@gmail.com", "789 Elm St", "Anytown", "NY", "34567"),
("Store M", "456-789-0123", "storem@live.com", "321 Pine St", "Anyville", "TX", "45678"),
("Store N", "567-890-1234", "storen@outlook.com", "654 Maple Ave", "Anystate", "FL", "56789"),
("Store O", "678-901-2345", "storeo@gmail.com", "987 Cedar St", "Anycity", "IL", "67890"),
("Store P", "789-012-3456", "storep@yandex.com", "246 Birch Rd", "Anytown", "MI", "78901"),
("Store Q", "890-123-4567", "storeq@protonmail.com", "369 Oak St", "Anyville", "OH", "89012"),
("Store R", "901-234-5678", "storer@hotmail.com", "582 Elm Ave", "Anystate", "PA", "90123"),
("Store S", "012-345-6789", "stores@icloud.com", "753 Pine St", "Anycity", "WA", "01234"),
("Store T", "123-456-7890", "storet@yahoo.com", "123 Main St", "Anytown", "VA", "12345")

/*TABLA staffs*/
INSERT INTO staffs
(first_name, last_name, email, phone, active, store_id)
VALUES
("John", "Doe", "johndoe@example.com", "123-456-7890", true, 1),
("Jane", "Doe", "janedoe@example.com", "234-567-8901", false, 2),
("Bob", "Smith", "bobsmith@example.com", "345-678-9012", true, 3),
("Mary", "Johnson", "maryjohnson@example.com", "456-789-0123", false, 4),
("David", "Williams", "davidwilliams@example.com", "567-890-1234", true, 5),
("Emily", "Brown", "emilybrown@example.com", "678-901-2345", false, 6),
("James", "Jones", "jamesjones@example.com", "789-012-3456", true, 7),
("Sarah", "Miller", "sarahmiller@example.com", "890-123-4567", false, 8),
("Michael", "Davis", "michaeldavis@example.com", "901-234-5678", true, 9),
("Linda", "Garcia", "lindagarcia@example.com", "012-345-6789", false, 10);

/*TABLA customers*/
INSERT INTO customers
(first_name, last_name, phone, email, street, city, state, zip_code)
VALUES
("John", "Doe", "555-123-4567", "johndoe@yahoo.com", "123 Main St", "Anytown", "NY", 12345),
("Jane", "Smith", "555-234-5678", "janesmith@yahoo.com", "456 Oak Ave", "Anycity", "NY", 23456),
("Bob", "Johnson", "555-345-6789", "bobjohnson@yahoo.com", "789 Elm St", "Anyville", "NY", 34567),
("Mary", "Williams", "555-456-7890", "marywilliams@yahoo.com", "321 Pine St", "Anystate", "NY", 45678),
("David", "Brown", "555-567-8901", "davidbrown@yahoo.com", "654 Maple Ave", "Anycity", "NY", 56789),
("Sarah", "Miller", "555-678-9012", "sarahmiller@yahoo.com", "987 Cedar St", "Anytown", "NY", 67890),
("James", "Davis", "555-789-0123", "jamesdavis@gmail.com", "246 Birch Rd", "Anyville", "TX", 78901),
("Emily", "Garcia", "555-890-1234", "emilygarcia@hotmail.com", "369 Oak St", "Anystate", "WA", 89012),
("Michael", "Martinez", "555-901-2345", "michaelmartinez@outlook.com", "582 Elm Ave", "Anycity", "CA", 90123),
("Jennifer", "Hernandez", "555-012-3456", "jenniferhernandez@protonmail.com", "753 Pine St", "Anytown", "FL", 01234),
("William", "Lopez", "555-234-5678", "williamlopez@icloud.com", "456 Oak Ave", "Anycity", "MI", 23456),
("Jessica", "Gonzalez", "555-345-6789", "jessicagonzalez@yandex.com", "789 Elm St", "Anytown", "OH", 34567),
("Daniel", "Perez", "555-456-7890", "danielperez@outlook.com", "321 Pine St", "Anyville", "PA", 45678),
("Ashley", "Rodriguez", "555-567-8901", "ashleyrodriguez@live.com", "654 Maple Ave", "Anystate", "WA", 56789),
("Christopher", "Lee", "555-678-9012", "christopherlee@protonmail.com", "987 Cedar St", "Anycity", "VA", 67890),
("Amanda", "Walker", "555-789-0123", "amandawalker@gmail.com", "246 Birch Rd", "Anytown", "NY", 78901),
("Stephanie", "Hall", "555-890-1234", "stephaniehall@hotmail.com", "369 Oak St", "Anyville", "TX", 89012),
("John", "Doe", "555-123-4567", "johndoe@gmail.com", "123 Main St", "New York", "NY", 10001),
("Jane", "Smith", "555-234-5678", "janesmith@hotmail.com", "456 Elm St", "Chicago", "IL", 60601),
("David", "Johnson", "555-345-6789", "davidjohnson@yahoo.com", "789 Oak Ave", "Dallas", "TX", 75201);


/*TABLA orders*/
INSERT INTO orders
(customer_id, order_status, order_date, required_date, shipped_date, store_id, staff_id)
VALUES
(1, 2, '2023-04-11', '2023-04-20', '2023-04-15', 1, 2),
(2, 1, '2023-04-13', '2023-04-15', '2023-04-14', 2, 3),
(3, 3, '2023-04-15', '2023-04-20', NULL, 1, 4),
(4, 4, '2023-04-16', '2023-04-22', NULL, 2, 1),
(5, 1, '2023-04-18', '2023-04-23', NULL, 1, 3),
(6, 2, '2023-04-20', '2023-04-25', '2023-04-22', 2, 4),
(7, 3, '2023-04-22', '2023-04-27', '2023-04-25', 1, 1),
(8, 4, '2023-04-24', '2023-04-30', NULL, 2, 2),
(9, 1, '2023-04-26', '2023-05-01', '2023-04-29', 1, 5),
(10, 2, '2023-04-28', '2023-05-04', NULL, 2, 3),
(11, 3, '2023-04-30', '2023-05-05', '2023-05-01', 1, 6),
(12, 2, '2023-05-02', '2023-05-07', NULL, 2, 4),
(13, 1, '2023-05-04', '2023-05-09', NULL, 1, 2),
(14, 4, '2023-05-06', '2023-05-11', '2023-05-08', 2, 7),
(15, 3, '2023-05-08', '2023-05-13', '2023-05-10', 1, 8),
(16, 2, '2023-05-10', '2023-05-15', NULL, 2, 1),
(17, 1, '2023-05-12', '2023-05-17', NULL, 1, 3),
(18, 4, '2023-05-14', '2023-05-19', '2023-05-16', 2, 9),
(19, 3, '2023-05-16', '2023-05-21', NULL, 1, 1),
(20, 2, '2023-05-18', '2023-05-23', '2023-05-20', 2, 10);

/*TABLA order_items*/
INSERT INTO order_items
(order_id,product_id, quantity, list_price, discount)
VALUES
(1, 1, 2, 10.99, 0.25),
(1, 2, 1, 15.99, 0),
(2, 3, 3, 5.99, 0),
(3, 1, 1, 10.99, 0.1),
(3, 2, 2, 15.99, 0.15),
(3, 3, 2, 5.99, 0),
(4, 2, 1, 15.99, 0),
(5, 3, 4, 5.99, 0.2),
(6, 1, 3, 10.99, 0.1),
(7, 2, 2, 15.99, 0),
(8, 3, 1, 5.99, 0),
(9, 1, 2, 10.99, 0),
(9, 2, 1, 15.99, 0.1),
(9, 3, 3, 5.99, 0.15),
(10, 2, 2, 15.99, 0),
(11, 3, 1, 5.99, 0.2),
(12, 1, 3, 10.99, 0),
(12, 2, 2, 15.99, 0),
(12, 3, 1, 5.99, 0),
(13, 2, 1, 15.99, 0.1);

/*TABLA stocks*/
INSERT INTO stocks
(store_id, product_id, quantity)
VALUES
(1, 1, 50),
(1, 2, 75),
(1, 3, 100),
(2, 1, 30),
(2, 2, 40),
(2, 3, 50),
(3, 1, 20),
(3, 2, 10),
(3, 3, 30),
(4, 1, 15),
(4, 2, 25),
(4, 3, 35),
(5, 1, 40),
(5, 2, 60),
(5, 3, 20),
(6, 1, 55),
(6, 2, 45),
(7, 1, 25),
(7, 2, 10),
(7, 3, 70);



