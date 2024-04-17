-- Day 3 Challenge SQL
SELECT 
MIN(replacement_cost) AS min,
MAX(replacement_cost) AS max,
ROUND(AVG(replacement_cost), 2) AS avg,
SUM(replacement_cost) AS sum
FROM film;

-- Check to see who has more payments and overall payment amount
SELECT
staff_id,
SUM(amount) AS overall_amount,
COUNT(payment_id) AS number_of_payments
FROM payment
GROUP BY staff_id
ORDER BY number_of_payments;

-- Consider the non-zero amount only
SELECT
staff_id,
SUM(amount) AS overall_amount,
COUNT(payment_id) AS number_of_payments
FROM payment
WHERE amount != 0
GROUP BY staff_id
ORDER BY number_of_payments;

-- Get the highest amount in a single day
SELECT
staff_id,
DATE(payment_date),
SUM(amount),
COUNT(*)
FROM payment
GROUP BY staff_id, DATE(payment_date)
ORDER BY SUM(amount) DESC;


-- Get the most sales in a single day

SELECT
staff_id,
DATE(payment_date),
SUM(amount),
COUNT(*)
FROM payment
WHERE amount != 0
GROUP BY staff_id, DATE(payment_date)
ORDER BY COUNT(*) DESC;

-- Challenge: HAVING
SELECT
customer_id,
DATE(payment_date),
ROUND(AVG(amount), 2) AS avg_amount,
COUNT(*)
FROM payment
WHERE DATE(payment_date) IN ('2020-04-28', '2024-04-29', '2020-04-30')
GROUP BY customer_id, DATE(payment_date)
HAVING COUNT(*) > 1
ORDER BY AVG(amount) DESC;
