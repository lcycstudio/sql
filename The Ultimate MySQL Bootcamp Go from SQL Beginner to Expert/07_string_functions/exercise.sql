USE book_shop;

-- Reverse and Uppercase the following sentence
-- "Why does my cat look at me with such hatred?"
SELECT REVERSE(UPPER('Why does my cat look at me with such hatred?'));

-- What does this print out?
SELECT
	REPLACE
    (
    CONCAT('I', ' ', 'like', ' ', 'cats'),
    ' ',
    '-'
);

-- Replace spaces in titles with '->'
SELECT REPLACE(title, ' ', '->') AS title FROM books;

-- Print this out
SELECT author_lname AS forwards, REVERSE(author_lname) AS backwards FROM books;

-- You know what to do!
SELECT UPPER(CONCAT(author_fname, ' ', author_lname)) AS 'full name in caps' FROM BOOKS;

-- Make this happen!
SELECT CONCAT(title, ' was released in ', released_year) AS blurb FROM BOOKS;

-- Print book titles and the length of each title
SELECT title, CHAR_LENGTH(title) AS 'character count' FROM BOOKS;

-- Last One, I Promise!
SELECT 
	CONCAT(SUBSTR(title, 1, 10), '...') AS 'short title', 
    CONCAT(author_lname, author_fname) AS author, 
    CONCAT(stock_quantity, ' in stock') AS quantity
FROM
	BOOKS
WHERE
	book_id=3 OR book_id=9;
