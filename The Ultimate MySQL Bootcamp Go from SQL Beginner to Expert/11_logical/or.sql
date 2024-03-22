USE book_shop;

SELECT title, pages FROM books 
WHERE CHAR_LENGTH(title) > 30
OR pages > 500;

SELECT * FROM books 
WHERE author_lname = 'Eggers' 
OR author_fname = 'Dave' 
OR released_year > 2010;

SELECT * FROM books 
WHERE author_lname = 'Eggers' 
OR released_year > 2010;

SELECT * FROM books 
WHERE author_lname = 'Eggers' 
OR released_year > 2010 
OR title LIKE '%novel%';

SELECT title, pages FROM books
WHERE pages < 200
OR title LIKE '%stories%';

SELECT 1 < 0 OR 4 < 5;
