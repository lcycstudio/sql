USE window_funcs;


SELECT 
	emp_no, 
    department, 
    salary,
    RANK() OVER(ORDER BY salary DESC) AS overall_salary_rank
FROM employees;

SELECT 
	emp_no, 
    department, 
    salary,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_rank,
    RANK() OVER(ORDER BY salary DESC) AS overall_salary_rank
FROM employees;

SELECT 
	emp_no, 
    department, 
    salary,
    RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_rank,
    RANK() OVER(ORDER BY salary DESC) AS overall_salary_rank
FROM employees
ORDER BY department;