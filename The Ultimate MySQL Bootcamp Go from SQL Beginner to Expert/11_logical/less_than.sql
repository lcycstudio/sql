USE book_shop;

SELECT title, released_year FROM books WHERE released_year < 2000;
SELECT title, released_year FROM books WHERE released_year <= 1985;

SELECT title, pages, released_year FROM books WHERE pages < 200;
SELECT title, pages, released_year FROM books WHERE pages <= 200;