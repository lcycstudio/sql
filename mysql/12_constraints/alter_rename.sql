USE book_shop;

RENAME TABLE companies TO suppliers;

SELECT * FROM suppliers;

ALTER TABLE suppliers RENAME TO companies;

SELECT * FROM companies;

DESC companies;

ALTER TABLE companies DROP COLUMN phone;

ALTER TABLE companies RENAME COLUMN name TO company_name;

DESC companies;

SELECT * FROM companies;