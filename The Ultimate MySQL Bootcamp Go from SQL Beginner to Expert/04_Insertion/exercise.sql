USE pet_shop;
CREATE TABLE employees (
	id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    middle_name VARCHAR(100),
    age INT NOT NULL,
    current_status VARCHAR(100) DEFAULT 'employed' NOT NULL
);

DESC employees;

INSERT INTO employees (first_name, last_name, age)
VALUES ('Thomas', 'Chickenman', 87);

SELECT * FROM employees;

DROP TABLE employees;