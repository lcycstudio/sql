USE book_shop;

SELECT book_id, title FROM books;

SELECT book_id, title FROM books LIMIT 5;

SELECT book_id, title, released_year FROM books ORDER BY released_year LIMIT 5;

SELECT book_id, title, released_year FROM books ORDER BY released_year DESC LIMIT 10;

SELECT book_id, title, released_year 
FROM books 
ORDER BY released_year 
DESC LIMIT 5, 7;

SELECT title
FROM books
ORDER BY title
LIMIT 18, 300;