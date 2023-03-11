USE book_shop;

SELECT book_id, title, author_lname FROM books;

SELECT book_id, author_lname FROM books ORDER BY author_lname;

SELECT book_id, author_lname FROM books ORDER BY author_lname DESC;

SELECT title, pages FROM books;

SELECT title, pages FROM books ORDER BY title DESC;

SELECT title, pages FROM books ORDER BY pages DESC;

SELECT title, pages, released_year FROM books ORDER BY released_year DESC;

SELECT title, pages, released_year FROM books ORDER BY 2;

SELECT title, pages, released_year FROM books ORDER BY 3;

SELECT book_id, author_fname, author_lname, pages FROM books ORDER BY pages;

SELECT book_id, author_fname, author_lname, pages FROM books ORDER BY 4 DESC;

SELECT book_id, author_fname, author_lname, pages FROM books ORDER BY 2 DESC;

SELECT author_lname, released_year, title FROM books ORDER BY author_lname, released_year;

SELECT author_lname, released_year, title FROM books ORDER BY author_lname, released_year DESC;

SELECT CONCAT(author_fname, ' ', author_lname) AS author FROM books ORDER BY author;
