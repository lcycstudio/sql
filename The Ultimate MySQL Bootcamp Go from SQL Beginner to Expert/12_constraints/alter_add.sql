USE book_shop;

CREATE TABLE companies (
	name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    CONSTRAINT name_address UNIQUE (name, address)
);

INSERT INTO companies (name, address)
VALUES ('blackbird auto', 'spruce');

INSERT INTO companies (name, address)
VALUES ('luigis pies', 'spruced');

ALTER TABLE companies
ADD COLUMN phone VARCHAR(15);

SELECT * FROM companies;

ALTER TABLE companies
ADD COLUMN employee_count INT NOT NULL;

SELECT * FROM companies;