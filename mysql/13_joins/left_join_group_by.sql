USE book_shop;

SELECT first_name, last_name, IFNULL(SUM(amount), 0) AS money_spent FROM customers
LEFT JOIN orders ON orders.customer_id = customers.id
GROUP BY first_name, last_name;

SELECT first_name, last_name, IFNULL(SUM(amount), 0) AS money_spent FROM orders
LEFT JOIN customers ON orders.customer_id = customers.id
GROUP BY first_name, last_name;