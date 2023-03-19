USE book_shop;

SELECT * FROM books WHERE released_year > 2005;
SELECT * FROM books WHERE released_year >= 2005;

SELECT * FROM books WHERE pages > 500;
SELECT * FROM books WHERE pages >= 500;

SELECT 99 > 1;

SELECT 3 > 10;

SELECT title, pages, released_year FROM books WHERE pages > 500;
SELECT title, pages, released_year FROM books WHERE pages >= 500;

SELECT 1 > NULL;

