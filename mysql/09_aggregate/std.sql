USE book_shop;

SELECT 
	author_lname,
	STD(pages)
FROM books 
GROUP BY author_lname;

SELECT 
	released_year,
	STDDEV(pages)
FROM books 
GROUP BY released_year;
