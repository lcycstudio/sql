USE book_shop;

-- not contain: NOT LIKE 

SELECT title FROM books WHERE title NOT LIKE '% %';

SELECT title, author_fname, author_lname FROM books WHERE author_fname LIKE 'da%';

SELECT title, author_fname, author_lname FROM books WHERE author_fname NOT LIKE 'da%';

SELECT title FROM books WHERE title NOT LIKE '%e%';

SELECT title FROM books WHERE title NOT LIKE '%a%';