-- https://dev.mysql.com/doc/refman/8.0/en/window-function-descriptions.html
-- https://dev.mysql.com/doc/refman/8.0/en/window-functions-usage.html
-- WINDOW FUNCTIONS: perform aggregate operations on groups of rows,
-- but they produce a result FOR EACH ROW.

CREATE DATABASE window_funcs;

USE window_funcs;

CREATE TABLE employees (
	emp_no INT PRIMARY KEY AUTO_INCREMENT,
    department VARCHAR(20),
    salary INT
);

INSERT INTO employees (department, salary)
VALUES	('engineering', 80000),
		('engineering', 69000),
        ('engineering', 70000),
        ('engineering', 103000),
        ('engineering', 67000),
        ('engineering', 89000),
        ('engineering', 91000),
        ('sales', 59000),
        ('sales', 70000),
        ('sales', 159000),
        ('sales', 72000),
        ('sales', 60000),
        ('sales', 61000),
        ('sales', 61000),
        ('customer service', 38000),
        ('customer service', 45000),
        ('customer service', 61000),
        ('customer service', 40000),
        ('customer service', 31000),
        ('customer service', 56000),
        ('customer service', 55000);

SELECT department, AVG(salary) FROM employees
GROUP BY department;

SELECT AVG(salary) FROM employees;

-- The OVER() clause constructs a window. When it's empty, the window will include all records
SELECT AVG(salary) OVER() FROM employees;

SELECT emp_no, department, AVG(salary) OVER() FROM employees;

SELECT 
	emp_no, 
    department, 
    salary,
    MIN(salary) OVER(),
    AVG(salary) OVER() 
FROM employees;

SELECT 
	emp_no, 
    department, 
    salary,
    MIN(salary),
    MAX(salary)
FROM employees;

SHOW ERRORS;







