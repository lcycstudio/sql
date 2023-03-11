-- Update - alter existing data

-- CREATE TABLE employees (
-- 	id INT AUTO_INCREMENT PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     age INT,
--     current_status VARCHAR(100) DEFAULT 'employed'
-- );

-- INSERT INTO employees (first_name, last_name, age)
-- VALUES ('thosmas', 'chickenname', 87);
-- INSERT INTO employees (first_name, last_name, age)
-- VALUES ('thosmas', 'chickenname', 87);
-- INSERT INTO employees (first_name, last_name, age)
-- VALUES ('thosmas', 'chickenname', 87);

-- UPDATE employees SET last_name='rooster';
-- UPDATE employees SET current_status='laid-off', last_name='who cares';
-- SELECT * FROM employees;

UPDATE cats SET breed='Shorthair' WHERE breed='Tabby';
UPDATE cats SET age=14 WHERE name='Misty';
SELECT * FROM cats;

-- A Good Rule of Thumb - Try selecting before you update