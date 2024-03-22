USE book_shop;

SELECT * FROM books 
WHERE author_lname = 'Eggers' 
AND author_fname = 'Dave' 
AND released_year > 2010;

SELECT * FROM books 
WHERE author_lname = 'Eggers' 
AND released_year > 2010;

SELECT * FROM books 
WHERE author_lname = 'Eggers' 
AND released_year > 2010 
AND title LIKE '%novel%';

-- LEFT AND RIGHT

SELECT 1 > 0 AND 8 = 8;

SELECT 1 > 0 AND 8 > 8;

SELECT title, pages FROM books 
WHERE CHAR_LENGTH(title) > 30
AND pages > 500;