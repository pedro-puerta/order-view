-- Your SQL goes here
INSERT INTO customers (customer_id, customer_name, region) VALUES (1, 'John Doe', 'North');
INSERT INTO customers (customer_id, customer_name, region) VALUES (2, 'Jane Smith', 'South');
INSERT INTO customers (customer_id, customer_name, region) VALUES (3, 'Alice Johnson', 'East');
INSERT INTO customers (customer_id, customer_name, region) VALUES (4, 'Bob Brown', 'West');
INSERT INTO customers (customer_id, customer_name, region) VALUES (5, 'Charlie Green', 'North');
INSERT INTO customers (customer_id, customer_name, region) VALUES (6, 'Daisy Blue', 'South');
INSERT INTO customers (customer_id, customer_name, region) VALUES (7, 'Eve White', 'East');

INSERT INTO products (product_id, product_name, category) VALUES (1, 'Smartphone', 'Electronics');
INSERT INTO products (product_id, product_name, category) VALUES (2, 'Laptop', 'Electronics');
INSERT INTO products (product_id, product_name, category) VALUES (3, 'Desk Chair', 'Furniture');
INSERT INTO products (product_id, product_name, category) VALUES (4, 'Tablet', 'Electronics');
INSERT INTO products (product_id, product_name, category) VALUES (5, 'Headphones', 'Electronics');
INSERT INTO products (product_id, product_name, category) VALUES (6, 'Camera', 'Electronics');

INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES (1, 1, '2024-01-15', 1200.00);
INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES (2, 2, '2024-02-20', 800.00);
INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES (3, 3, '2024-03-05', 300.00);
INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES (4, 4, '2024-04-12', 1500.00);
INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES (5, 5, '2024-05-22', 400.00);
INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES (6, 6, '2024-06-30', 600.00);
INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES (7, 7, '2024-07-01', 700.00);
INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES (8, 1, '2024-07-02', 2000.00);
INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES (9, 2, '2024-07-03', 1000.00);
INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES (10, 3, '2024-07-04', 800.00);

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_per_item) VALUES (1, 1, 1, 1, 1200.00);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_per_item) VALUES (2, 2, 2, 1, 800.00);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_per_item) VALUES (3, 3, 4, 1, 300.00);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_per_item) VALUES (4, 4, 2, 2, 750.00);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_per_item) VALUES (5, 5, 5, 2, 200.00);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_per_item) VALUES (6, 6, 1, 1, 600.00);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_per_item) VALUES (7, 7, 2, 1, 700.00);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_per_item) VALUES (8, 8, 3, 1, 2000.00);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_per_item) VALUES (9, 9, 4, 2, 500.00);
INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price_per_item) VALUES (10, 10, 6, 1, 800.00);
