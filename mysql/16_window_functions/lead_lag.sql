USE window_funcs;

-- https://dev.mysql.com/doc/refman/8.0/en/window-function-descriptions.html
-- LEAD()	Value of argument from row leading current row within partition
-- LAG()	Value of argument from row lagging current row within partition

SELECT 
	emp_no, 
    department, 
    salary,
    salary - LAG(salary) OVER(ORDER BY salary DESC) AS salary_diff
FROM employees;

SELECT 
	emp_no, 
    department, 
    salary,
    salary - LEAD(salary) OVER(ORDER BY salary DESC) AS salary_diff
FROM employees;

SELECT 
	emp_no, 
    department, 
    salary,
    salary - LAG(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_diff
FROM employees;

SELECT 
	emp_no, 
    department, 
    salary,
    LAG(salary, 2) OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_diff
FROM employees;