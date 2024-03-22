USE book_shop;

ALTER TABLE companies
MODIFY company_name VARCHAR(100) DEFAULT 'unknown';

DESC companies;

INSERT INTO companies (address) VALUES ('2554 rose lane');

SELECT * FROM companies;

ALTER TABLE companies
CHANGE address company_address VARCHAR(200);