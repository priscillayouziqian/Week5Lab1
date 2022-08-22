-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders(
  order_id SERIAL PRIMARY KEY,
  person_id VARCHAR(40),
  product_name VARCHAR(40),
  product_price NUMERIC, 
  quantity INTEGER
);

-- Add 5 orders to the orders table.
-- Make orders for at least two different people.
-- person_id should be different for different people.
INSERT INTO orders (
  person_id, product_name, product_price, quantity)
VALUES ('Salsa', 'Shampoo', 15, 2),
('Alex', 'condiitoner', 20, 1),
('Laila', 'Shampoo', 12, 3);

-- Select all the records from the orders table.
SELECT * FROM orders;

-- Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;

-- Calculate the total order price.
SELECT SUM(product_price) FROM orders;

-- Calculate the total order price by a single person_id.
SELECT SUM(quantity * product_price) FROM orders WHERE person_id = 0;