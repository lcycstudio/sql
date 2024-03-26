SELECT * FROM actor;
SELECT address, district FROM address;
SELECT first_name, last_name, email FROM customer;
SELECT first_name, last_name FROM actor ORDER BY first_name DESC;
SELECT first_name, last_name FROM actor ORDER BY first_name ASC;
SELECT * FROM payment ORDER BY customer_id, amount;
SELECT * FROM payment ORDER BY customer_id, amount DESC;
SELECT 
first_name, 
last_name, 
email 
FROM customer ORDER BY last_name DESC, first_name DESC;
SELECT DISTINCT amount FROM payment ORDER BY amount DESC;
SELECT
first_name
FROM actor
ORDER BY first_name
LIMIT 4;
SELECT * FROM rental 
ORDER BY rental_date DESC 
LIMIT 10;
SELECT COUNT(*)
FROM customer;
SELECT COUNT(first_name)
FROM customer;
SELECT COUNT(DISTINCT first_name)
FROM customer;
SELECT DISTINCT district FROM address;
SELECT rental_date FROM rental ORDER BY rental_date DESC LIMIT 1;
SELECT COUNT(DISTINCT title) FROM film;
SELECT COUNT(DISTINCT last_name) FROM customer;