USE book_shop;

SELECT first_name, last_name, order_date, amount FROM customers
LEFT JOIN orders ON orders.customer_id = customers.id;

SELECT first_name, last_name, order_date, amount FROM orders
LEFT JOIN customers ON orders.customer_id = customers.id;
