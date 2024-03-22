USE book_shop;

CREATE TABLE users (
	username VARCHAR(20) NOT NULL,
    age INT CHECK (age > 0)
);

INSERT INTO users (username, age)
VALUES ('bluethecat', 50);

-- This insert would result in an error:
-- INSERT INTO users (username, age)
-- VALUES ('coltsteele', -3);

CREATE TABLE palindromes (
	word VARCHAR(100) CHECK(REVERSE(word) = word)
);

INSERT INTO palindromes (word) VALUES ('racecar');

INSERT INTO palindromes (word) VALUES ('mommy');
