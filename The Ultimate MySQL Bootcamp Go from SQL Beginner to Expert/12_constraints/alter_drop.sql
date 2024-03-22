USE book_shop;

ALTER TABLE companies
DROP COLUMN employee_count;

SELECT * FROM companies;

ALTER TABLE companies
DROP COLUMN phone;

SELECT * FROM companies;
