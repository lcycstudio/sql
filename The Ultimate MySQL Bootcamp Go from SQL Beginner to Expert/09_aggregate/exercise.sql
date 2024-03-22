USE book_shop;

-- Print the number of books in the database in each year
SELECT COUNT(*) FROM books;
SELECT released_year, COUNT(*)
FROM books
GROUP BY released_year;

-- Print the total number of books in stock
SELECT stock_quantity FROM books;
SELECT SUM(stock_quantity) FROM books;

-- Find the average released_year for each other
SELECT 
	CONCAT(author_fname, ' ', author_lname) AS author,
    AVG(released_year)
FROM BOOKS
GROUP BY author;

-- Find the full name of the author who wrote the longest book
SELECT CONCAT(author_fname, ' ', author_lname) AS author, pages
FROM books
WHERE pages = (SELECT MAX(pages) FROM books);

SELECT CONCAT(author_fname, ' ', author_lname) AS author, pages
FROM books
ORDER BY pages DESC LIMIT 1;

-- Make this happen
SELECT 
	released_year AS year,
    COUNT(*) AS books,
    AVG(pages)
FROM books
GROUP BY released_year
ORDER BY released_year;

