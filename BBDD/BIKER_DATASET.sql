USE BIKERS;

/* 10 registros para categories */
INSERT INTO categories (category_name) VALUES
    ('Mountain Bikes'),
    ('Road Bikes'),
    ('Accessories'),
    ('Helmets'),
    ('Gloves'),
    ('Lights'),
    ('Tires'),
    ('Pedals'),
    ('Saddles'),
    ('Water Bottles');

/* 10 registros para brands */
INSERT INTO brands (brand_name) VALUES
    ('Trek'),
    ('Specialized'),
    ('Giant'),
    ('Cannondale'),
    ('Scott'),
    ('Bianchi'),
    ('Fuji'),
    ('Orbea'),
    ('Merida'),
    ('Raleigh');

/* 10 registros para products */
INSERT INTO products (product_name, brand_id, category_id, model_year, list_price) VALUES
    ('Mountain Bike 1', 1, 1, 2023, 1500),
    ('Road Bike 1', 2, 2, 2023, 2000),
    ('Accessory 1', 3, 3, NULL, 50),
    ('Helmet 1', 4, 4, NULL, 80),
    ('Gloves 1', 5, 5, NULL, 20),
    ('Light 1', 6, 6, NULL, 30),
    ('Tire 1', 7, 7, NULL, 40),
    ('Pedal 1', 8, 8, NULL, 25),
    ('Saddle 1', 9, 9, NULL, 60),
    ('Water Bottle 1', 10, 10, NULL, 10);

/* 10 registros para stocks */
INSERT INTO stocks (product_id, quantity) VALUES
    (1, 50),
    (2, 30),
    (3, 100),
    (4, 40),
    (5, 60),
    (6, 25),
    (7, 35),
    (8, 20),
    (9, 15),
    (10, 200);

/* 10 registros para customers */
INSERT INTO customers (first_name, last_name, phone, email, street, city, state, zip_code) VALUES
('Jamika', 'Acevedo', '123-456-7890', 'jamika@yahoo.com', '123 Main St', 'Cityville', 'NY', 12345),
('Penny', 'Acevedo', '987-654-3210', 'penny@gmail.com', '456 Oak St', 'Townsville', 'NY', 54321),
('Beltyann', 'Acosta', '555-123-4567', 'beltyann@outlook.com', '789 Pine St', 'Villagetown', 'NY', 67890),
('Shery', 'Acosta', NULL, 'shery@yahoo.com', '567 Elm St', 'Hamletsville', 'NY', 34567),
('Corina', 'Adkins', '777-234-5678', 'corina@gmail.com', '890 Birch St', 'Meadowville', 'NY', 45678),
('Phylis', 'Anderson', '888-567-8901', 'phylis@outlook.com', '345 Cedar St', 'Hilltown', 'NY', 56789),
('Ethan', 'Martinez', NULL, 'ethan@yahoo.es', '678 Maple St', 'Countryside', 'IL', 78901),
('Olivia', 'Rodriguez', '222-345-6789', 'olivia@gmail.com', '901 Oak St', 'Ruraltown', 'OH', 89012),
('Aiden', 'Lopez', '666-678-9012', 'aiden@outlook.com', '234 Walnut St', 'Suburbia', 'MI', 90123),
('Mia', 'Gonzalez', '999-012-3456', 'mia@yahoo.com', '456 Spruce St', 'Metropolis', 'GA', 23456);


/* 10 registros para stores */
INSERT INTO stores (store_name, phone, email, city, state, zip_code) VALUES
    ('Baldwin Bikes', '555-111-2222', 'baldwind@bikes-company.com', 'Cityville', 'CA', 12345),
    ('Santa Cruz Bikes', '555-333-4444', 'santa-cruz@bikes-company.com', 'Townsville', 'NY', 54321),
    ('Rowlett Bikes', '555-555-6666', 'rowlett@bikes-company.com', 'Villagetown', 'TX', 67890),
    ('Store D', '555-777-8888', 'stored@stored-company.com', 'Hamletsville', 'FL', 34567),
    ('Store E', '555-999-0000', 'storee@storee-company.com', 'Meadow', 'FL', 45216),
    ('Store F', '555-000-1111', 'storef@storef-company.com', 'Hilltown', 'PA', 56789),
    ('Store G', '555-222-3333', 'storeg@storeg-company.com', 'Countryside', 'IL', 78901),
    ('Store H', '555-444-5555', 'storeh@storeh-company.com', 'Ruraltown', 'OH', 89012),
    ('Store I', '555-666-7777', 'storei@storei-company.com', 'Suburbia', 'MI', 90123),
    ('Store J', '555-888-9999', 'storej@storej-company.com', 'Metropolis', 'GA', 23456);

/* 10 registros para staffs */
INSERT INTO staffs (first_name, last_name, email, phone, active, store_id, manager_id) VALUES
    ('Marcelene', 'Boyer', 'marcelene-boyer@bikes-company.com', '555-111-5555', true, 1, NULL),
    ('Venita', 'Daniel', 'daniel-venita@bikes-company.com', '555-333-5555', true, 1, 1),
    ('Staff C', 'LastNameC', 'staffc@storec-company.com', '555-555-5555', true, 2, 1),
    ('Staff D', 'LastNameD', 'staffd@stored-company.com', '555-777-5555', true, 2, 3),
    ('Staff E', 'LastNameE', 'staffe@storee-company.com', '555-999-5555', true, 3, 3),
    ('Manager F', 'LastNameF', 'managerf@storef-company.com', '555-111-6666', true, 3, NULL),
    ('Staff G', 'LastNameG', 'staffg@storeg-company.com', '555-333-6666', true, 4, 6),
    ('Staff H', 'LastNameH', 'staffh@storeh-company.com', '555-555-6666', true, 4, 6),
    ('Manager I', 'LastNameI', 'manageri@storei-company.com', '555-777-6666', true, 4, NULL),
    ('Staff J', 'LastNameJ', 'staffj@storej-company.com', '555-999-6666', true, 5, 9);


/* 10 registros para orders */
INSERT INTO orders (customer_id, order_status, order_date, required_date, shipped_date, store_id, staff_id) VALUES
    (1, 1, '2023-11-27', '2023-11-30', '2023-12-02', 1, 2),
    (2, 1, '2023-11-28', '2023-12-01', NULL, 2, 1),
    (3, 1, '2023-11-29', '2023-12-02', NULL, 3, 1),
    (4, 1, '2023-11-30', '2023-12-03', NULL, 4, 3),
    (5, 1, '2023-12-01', '2023-12-04', NULL, 5, 3),
    (6, 1, '2023-12-02', '2023-12-05', NULL, 1, 6),
    (7, 1, '2023-12-03', '2023-12-06', NULL, 1, 2),
    (8, 1, '2023-12-04', '2023-12-07', NULL, 3, 6),
    (9, 1, '2023-12-05', '2023-12-08', NULL, 4, 6),
    (10, 1, '2023-12-06', '2023-12-09', NULL, 5, 9);

/* 10 registros para order_items */
INSERT INTO order_items (order_id, product_id, quantity, list_price, discount) VALUES
    (1, 1, 2, 1500, 10),
    (1, 2, 1, 2000, 5),
    (2, 3, 3, 50, 0),
    (3, 4, 1, 80, 0),
    (3, 5, 2, 20, 0),
    (4, 6, 3, 30, 0),
    (4, 7, 4, 40, 0),
    (5, 8, 1, 25, 0),
    (5, 9, 2, 60, 0),
    (6, 10, 5, 10, 0);

/*
SELECT * FROM categories;
SELECT * FROM brands;
SELECT * FROM products;
SELECT * FROM stocks;
SELECT * FROM customers;
SELECT * FROM stores;
SELECT * FROM staffs;
SELECT * FROM order_items;
*/