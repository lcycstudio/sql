USE book_shop;

SELECT author_lname FROM books GROUP BY author_lname;

SELECT author_lname, COUNT(*) AS books FROM books_written GROUP BY author_lname;

SELECT author_lname, COUNT(*) AS books_written 
FROM books
GROUP BY author_lname 
ORDER BY books_written DESC;

SELECT released_year FROM books GROUP BY released_year;

SELECT released_year, COUNT(*) 
FROM books 
GROUP BY released_year
ORDER BY released_year DESC;
