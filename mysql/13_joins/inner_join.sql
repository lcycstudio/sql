USE book_shop;

-- INNER JOIN: Select all records from both A and B 
-- where the join conditions are met

SELECT * FROM customers
INNER JOIN orders ON customers.id = orders.customer_id;

SELECT first_name, last_name, order_date, amount FROM customers
INNER JOIN orders ON customers.id = orders.customer_id;

SELECT * FROM orders
INNER JOIN customers ON customers.id = orders.customer_id;
