USE book_shop;

SELECT * FROM books WHERE author_lname IS NULL;

SELECT * FROM books WHERE author_lname IS NOT NULL;

SELECT * FROM books WHERE title IS NULL;

DELETE FROM books WHERE title IS NULL;