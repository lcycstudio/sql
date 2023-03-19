USE book_shop;

SELECT first_name, last_name, order_date, amount FROM customers
JOIN orders ON customers.id = orders.customer_id;

SELECT first_name, last_name, SUM(amount) AS total FROM customers
JOIN orders ON customers.id = orders.customer_id
GROUP BY first_name, last_name
ORDER BY total;
