USE book_shop;

-- Select all story collections, titles that contain 'stores'
SELECT title 
FROM books 
WHERE title LIKE '%stories%';

-- Find the longest title book, print out the title and page count
SELECT title, pages 
FROM books 
ORDER BY pages 
DESC LIMIT 1;

-- Print a summary containing the title and the year, for the 3 most recent books
SELECT CONCAT(title, ' - ', released_year) 
AS summary 
FROM books 
ORDER BY released_year 
DESC LIMIT 3;

-- Find all books with an author_lname that contains a space (" ")
SELECT title, author_lname 
FROM books 
WHERE author_lname LIKE '% %';

-- Find the 3 books with the lowest stock
SELECT title, released_year, stock_quantity 
FROM books 
ORDER BY stock_quantity, title 
LIMIT 3;

-- Print title and author_lname, sorted first by author_lname and then by title
SELECT title, author_lname 
FROM books 
ORDER BY author_lname, title;

-- Make this happen: sorted alphabetically by last name
SELECT 
UPPER(CONCAT('My favourite author is ', author_fname, ' ', author_lname, '!')) AS yell 
FROM books 
ORDER BY author_lname;