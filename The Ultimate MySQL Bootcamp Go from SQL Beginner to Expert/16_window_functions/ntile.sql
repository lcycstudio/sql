USE window_funcs;

-- https://dev.mysql.com/doc/refman/8.0/en/window-function-descriptions.html
-- NTILE(): Bucket number of current row within its partition.

SELECT 
	emp_no, 
    department, 
    salary,
    NTILE(4) OVER(ORDER BY salary DESC) AS salary_quartile
FROM employees;


SELECT 
	emp_no, 
    department, 
    salary,
    NTILE(4) OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_quartile,
    NTILE(4) OVER(ORDER BY salary DESC) AS salary_quartile
FROM employees;
