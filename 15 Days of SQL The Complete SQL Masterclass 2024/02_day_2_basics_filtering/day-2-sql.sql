-- Day 2 Challenge SQL
SELECT
COUNT(customer_id)
FROM customer
WHERE customer_id = 100;
SELECT
first_name,
last_name
FROM customer
WHERE first_name = 'ERICA';
SELECT
COUNT(rental_id)
FROM rental
WHERE return_date is null;
SELECT
payment_id,
amount
FROM payment
WHERE amount <= 2
ORDER BY amount DESC;
SELECT
*
FROM payment
WHERE
(customer_id = 322 OR customer_id = 346 OR customer_id = 354)
AND
(amount < 2 OR amount > 10)
ORDER BY customer_id ASC, amount DESC;
SELECT
COUNT(*)
FROM payment
WHERE
(amount BETWEEN 1.99 AND 3.99)
AND
(payment_date BETWEEN '2020-01-26' AND '2020-01-28');
SELECT
*
FROM payment
WHERE
customer_id IN (12, 25, 67, 93, 124, 234)
AND amount IN (4.99, 7.99, 9.99)
AND (payment_date BETWEEN '2020-01-01 0:00' AND '2020-02-01');
SELECT
COUNT(*)
FROM film
WHERE description LIKE '%Documentary%';
SELECT
COUNT(*)
FROM customer
WHERE first_name LIKE '___' 
AND (last_name LIKE '%X' OR last_name LIKE '%Y');
SELECT
COUNT(*) AS no_of_movies
FROM film
WHERE description LIKE '%Saga%'
AND (title LIKE 'A%' OR title LIKE '%R');
SELECT
*
FROM customer
WHERE (first_name LIKE '%ER%' AND first_name LIKE '_A%')
ORDER BY last_name DESC;
SELECT
COUNT(*)
FROM payment
WHERE (amount = 0 OR amount BETWEEN 3.99 AND 7.99)
AND payment_date BETWEEN '2020-05-01' AND '2020-05-02';