USE window_funcs;

-- https://dev.mysql.com/doc/refman/8.0/en/window-function-descriptions.html
-- FIRST_VALUE(): Value of argument from first row of window frame

SELECT 
	emp_no, 
    department, 
    salary,
    FIRST_VALUE(emp_no) OVER(ORDER BY salary DESC)
FROM employees;


SELECT 
	emp_no, 
    department, 
    salary,
    FIRST_VALUE(emp_no) OVER(PARTITION BY department ORDER BY salary DESC) AS highest_paid_dept,
    FIRST_VALUE(emp_no) OVER(ORDER BY salary DESC) AS highest_paid_overall
FROM employees;
