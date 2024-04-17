## Section 03: Day 3 - Basics: Grouping

#### Table of Contents

- Today's plan
- Aggregate functions
- Coding Exercise 12: Aggregate functions
- Challenge: Aggregate function
- GROUP BY
- Coding Exercise 13: GROUP BY
- Challenge: GROUP BY
- Solution: GROUP BY
- GROUP BY multiple columns
- Coding Exercise 14: GROUP BY multiple columns
- Challenge: GROUP BY multiple columns
- Solution: GROUP BY multiple columns
- HAVING
- Coding Exercise 15: HAVING
- Challenge: HAVING
- Solution: HAVING
- Introducing the second project
- Note for Mac users
- Important: Problems & solutions of setting up the database
- Today's summary

### Today's plan

### Aggregate functions

- Aggregate values in multiple rows to one value.

#### Most common aggregation functions

- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`
- `COUNT()`

```sql
SELECT
SUM(amount),
COUNT(*),
AVG(amount)
FROM payment;
```

### Coding Exercise 12: Aggregate functions

Your challenge is to write a single SQL query to find the total number of orders and the average order amount from the `Orders` table. The solution should include only orders made in August 2023.

Use the aliases `TotalOrders` and `AverageOrderAmount` in your query.

Column names:

- OrderID
- Amount
- OrderDate

Remember, you know how to use COUNT(), AVG(), WHERE, BETWEEN, and other basic SQL commands without grouping.

```sql
SELECT
COUNT(OrderID) AS TotalOrders,
AVG(Amount) AS AverageOrderAmount
FROM Orders;
```

### Challenge: Aggregate function

Your manager wants to which of the two employees (staff_id) is responsible for more payments? Which of the two is responsible for a higher overall payment amount? How do these amounts change if we don't consider amounts
equal to 0? Write two SQL queries to get the answers!

```sql
SELECT
MIN(replacement_cost) AS min,
MAX(replacement_cost) AS max,
ROUND(AVG(replacement_cost), 2) AS avg,
SUM(replacement_cost) AS sum
FROM film;
```

### GROUP BY

- Used to **GROUP** aggregations **BY** specific columns

```sql
SELECT
customer_id,
SUM(amount)
FROM payment
GROUP BY customer_id;
```

```sql
SELECT
customer_id,
SUM(amount),
MAX(amount),
FROM payment
GROUP BY customer_id;
```

```sql
SELECT
customer_id,
SUM(amount)
FROM
payment
WHERE
customer_id >3
GROUP BY
customer_id
```

```sql
SELECT
customer_id,
SUM(amount)
FROM
payment
WHERE
customer_id >3
GROUP BY
customer_id
ORDER BY
SUM(amount) DESC
```

### Coding Exercise 13: GROUP BY

Using the `sales_data` table, write a SQL query to calculate the total `quantity` sold and the total `sale_amount` for each `category`.

Your query should return columns for the `category`, the sum of `quantity` as `total_quantity`, and the sum of `sale_amount` as `total_sales_amount`. Order the results by `total_sales_amount` in descending order.

Important columns:

- category
- quantity
- sale_amount

```sql
SELECT
category,
SUM(quantity) AS total_quantity,
SUM(sale_amount) AS total_sales_amount
FROM sales_data
GROUP BY category
ORDER BY total_sales_amount DESC;
```

### Challenge: GROUP BY

Your manager wants to know which of the two employees (staff_id) is responsible for more payments. Which of the two is responsible for higher overall payment amount? How do these amounts change if we don't consider amounts equal to 0?

### Solution: GROUP BY

#### Check to see who has more payments and overall payment amount

```sql
SELECT
staff_id,
SUM(amount) AS overall_amount,
COUNT(payment_id) AS number_of_payments
FROM payment
GROUP BY staff_id
ORDER BY number_of_payments;
```

#### Consider the non-zero amount only

```sql
SELECT
staff_id,
SUM(amount) AS overall_amount,
COUNT(payment_id) AS number_of_payments
FROM payment
WHERE amount != 0
GROUP BY staff_id
ORDER BY number_of_payments;
```

### GROUP BY multiple columns

```sql
SELECT
staff_id,
customer_id,
SUM(amount),
COUNT(*)
FROM payment
GROUP BY staff_id, customer_id
ORDER BY COUNT(*) DESC;
```

```sql
SELECT
staff_id,
rental_id,
SUM(amount),
COUNT(*)
FROM payment
GROUP BY staff_id, rental_id
ORDER BY COUNT(*) DESC;
```

### Coding Exercise 14: GROUP BY multiple columns

Create a query showing the total sales amount (AS total_sales_amount) and total number of items sold (AS total_items_sold), grouped by `category` and `sale_date`. Order the results by `category` in ascending order and then by sale_date in ascending order.

Use the `sales` table with columns: `category`, `sale_date`, `amount`.

Note: You can assume one row in the table represents one item sold.

```sql
SELECT
category,
sale_date,
SUM(amount) AS total_sales_amount,
COUNT(*) AS total_items_sold
FROM sales
GROUP BY category, sale_date
ORDER BY category ASC, sale_date ASC;
```

### Challenge: GROUP BY multiple columns

There are two competitions between the two employees. Which employee had the highest amount in a single day? Which employee had the most sales in a single day (not counting payments with amount = 0)?
Write two SQL queries to get the answers!

### Solution: GROUP BY multiple columns

#### Get the highest amount in a single day

```sql
SELECT
staff_id,
DATE(payment_date),
SUM(amount),
COUNT(*)
FROM payment
GROUP BY staff_id, DATE(payment_date)
ORDER BY SUM(amount) DESC;
```

#### Get the most sales in a single day

```sql
SELECT
staff_id,
DATE(payment_date),
SUM(amount),
COUNT(*)
FROM payment
WHERE amount != 0
GROUP BY staff_id, DATE(payment_date)
ORDER BY COUNT(*) DESC;
```

### HAVING

- Used to FILTER **Groupings** BY aggregations

```sql
SELECT
customer_id,
SUM(amount)
FROM payment
GROUP BY cutomer_id
HAVING SUM(amount) > 200
```

```sql
SELECT
staff_id,
DATE(payment_date),
SUM(amount),
COUNT(*)
FROM payment
WHERE amount != 0
GROUP BY staff_id, DATE(payment_date)
HAVING COUNT(*) = 28 OR COUNT(*) = 29
ORDER BY COUNT(*) DESC;
```

### Coding Exercise 15: HAVING

Find the cities with more than two transactions where the average transaction amount exceeds $150.00. List the city and the average transaction amount (AS AverageAmount), sorted by the average transaction amount in descending order.

Necessary Information

Table name: `Sales`
Columns to consider: `City`, `Amount`, `TransactionID`

```sql
SELECT
City,
AVG(Amount) AS AverageAmount
FROM Sales
GROUP BY City
HAVING COUNT(TransactionID) > 2 AND AVG(Amount) > 150
ORDER BY AVG(amount) DESC;
```

### Challenge: HAVING

In 2020, April 28, 29 and 30 were days with very high revenue. That's why we want to focus in this task only on these days (filter accordingly). Find out what is the **average payment amount grouped by customer and day** -- consider only the days/customers with more than 1 payment (per customer and day). Order by the average amount in a descending order. Write a SQL query to find out!

### Solution: HAVING

```sql
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
```

### Introducing the second project

### Note for Mac users

### Important: Problems & solutions of setting up the database

### Today's summary

- Aggregate functions
- GROUP BY
- GROUP BY multiple columns
- HAVING
