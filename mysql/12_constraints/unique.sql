USE book_shop;

CREATE TABLE contacts (
	name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE
);

INSERT INTO contacts (name, phone)
VALUES ('billybob', '8781213455');

-- This insert would result in an error:
-- INSERT INTO contacts (name, phone)
-- VALUES ('billybob', '8781213455');

INSERT INTO contacts (name, phone)
VALUES ('billybob', '9781213455');

SELECT * FROM contacts;

