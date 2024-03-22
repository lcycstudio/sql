USE book_shop;

SELECT title, author_fname, author_lname
FROM books
WHERE author_fname='Dave';

SELECT title, author_fname, author_lname
FROM books
WHERE author_fname LIKE '%da';

SELECT title, author_fname, author_lname
FROM books
WHERE author_fname LIKE '%da%';

SELECT title, author_fname, author_lname
FROM books
WHERE author_fname LIKE 'da%';

SELECT * FROM books WHERE title like '%:%';

SELECT * FROM books WHERE author_fname LIKE '____';

SELECT * FROM books WHERE author_fname LIKE '_av_';

SELECT * FROM books WHERE author_fname LIKE 'Da_';

SELECT * FROM books WHERE author_fname LIKE '__hn';