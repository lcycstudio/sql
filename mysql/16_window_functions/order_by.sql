USE window_funcs;

-- Insdie of the OVER(), use ORDER BY to re-order rows within each window.

SELECT 
	emp_no, 
    department, 
    salary,
    SUM(salary) OVER(PARTITION BY department ORDER BY salary DESC) AS rolling_dept_salary,
    SUM(salary) OVER(PARTITION BY department) AS total_dept_salary
FROM employees;

SELECT 
	emp_no, 
    department, 
    salary,
    MIN(salary) OVER(PARTITION BY department ORDER BY salary) AS rolling_min
FROM employees;