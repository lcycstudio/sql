USE book_shop;

SELECT SUM(pages) FROM books;

SELECT author_lname, SUM(pages) FROM BOOKS
GROUP BY author_lname;

SELECT author_lname, COUNT(*), SUM(released_year)
FROM books
GROUP BY author_lname;