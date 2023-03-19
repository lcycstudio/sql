USE book_shop;

SELECT first_name, last_name, order_date, amount FROM customers
RIGHT JOIN orders ON orders.customer_id = customers.id;

SELECT first_name, last_name, order_date, amount FROM orders
RIGHT JOIN customers ON orders.customer_id = customers.id;