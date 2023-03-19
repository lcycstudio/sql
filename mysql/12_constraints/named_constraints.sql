USE book_shop;

CREATE TABLE users2 (
	username VARCHAR(20) NOT NULL,
    age INT,
    CONSTRAINT age_not_negative CHECK (age >= 0)
);


INSERT INTO users2 (username, age)
VALUES ('chickenlady', -9);

CREATE TABLE palindromes2 (
	word VARCHAR(100),
    CONSTRAINT word_is_palindrome CHECK(REVERSE(word) = word)
);


INSERT INTO palindromes2 (word)
VALUES ('mom');

INSERT INTO palindromes2 (word)
VALUES ('momma');
