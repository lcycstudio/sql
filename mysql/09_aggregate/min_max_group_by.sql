USE book_shop;

-- Find the year each author published their first book

SELECT author_fname, author_lname, MIN(released_year)
FROM BOOKS
GROUP BY author_lname, author_fname
ORDER BY MIN(released_year);

SELECT 
	author_lname, 
	COUNT(*) AS books_written, 
	MAX(released_year) AS latest_release,
	MIN(released_year) AS earliest_release,
    MAX(pages) AS longest_page_count
FROM BOOKS
GROUP BY author_lname, author_fname
ORDER BY latest_release DESC;

SELECT 
	author_lname, 
    author_fname,
	COUNT(*) AS books_written, 
	MAX(released_year) AS latest_release,
	MIN(released_year) AS earliest_release
FROM BOOKS
GROUP BY author_lname, author_fname
ORDER BY latest_release DESC;
