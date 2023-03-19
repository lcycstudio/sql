USE book_shop;

SELECT title, released_year FROM books
WHERE released_year >= 2004
AND released_year <= 2015;

SELECT title, released_year FROM books
WHERE released_year BETWEEN 2004 AND 2015;

SELECT title, pages FROM books
 WHERE pages BETWEEN 200 AND 300;

SELECT title, pages FROM books
 WHERE pages NOT BETWEEN 200 AND 300;
