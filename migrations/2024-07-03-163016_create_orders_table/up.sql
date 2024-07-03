-- Your SQL goes here
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    order_date DATE,
    amount DECIMAL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);