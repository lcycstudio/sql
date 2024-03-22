USE book_shop;

SELECT COUNT(*) FROM books;

SELECT COUNT(author_lname) FROM books;

SELECT COUNT(DISTINCT author_lname) FROM books;

SELECT COUNT(DISTINCT author_fname) FROM books;

SELECT COUNT(DISTINCT released_year) FROM books;

SELECT COUNT(*) FROM books WHERE title LIKE '%the%';
