-- Evaluate the following
SELECT 10 != 10;
SELECT 15 > 14 AND 99 - 5 <= 94;
SELECT 1 IN (5,3) OR 9 BETWEEN 8 AND 10;

DESC books;

-- Select all the books written before 1980 (non inclusive)
SELECT * FROM books WHERE released_year < 1980;

-- Select all books written by Eggs or Chabon
SELECT * FROM books 
WHERE author_lname = 'Eggers' 
OR author_lname = 'Chabon';
SELECT * FROM books WHERE author_lname IN ('Eggs', 'Chabon');

-- Select all books written by Lahiri published after 2000
SELECT * FROM books 
WHERE author_lname = 'Lahiri' 
AND released_year > 2000;

-- Select all books with page counts between 100 and 200
SELECT * FROM books 
WHERE pages 
BETWEEN 100 AND 200;

-- Select all books where author_lname starts with a 'C' or an 'S'
SELECT title, author_lname FROM books 
WHERE author_lname LIKE 'C%' 
OR author_lname LIKE 'S%';

SELECT title, author_lname FROM books
WHERE SUBSTR(author_lname, 1, 1) IN ('C', 'S');


-- If title contains 'stories' --> Short Stories
-- Just Kids and A Heartbreaking Work -> Memoir
-- Everything Else -> Novel
SELECT title, author_lname, 
CASE
	WHEN title LIKE '%stories%' THEN 'Short Stories'
    WHEN title = 'Just Kids' OR title LIKE '%A Heartbreaking Work%' THEN 'Memoir'
    ELSE 'Novel'
END AS TYPE
FROM BOOKS;

-- Bonus: Make this Happen
SELECT author_fname, author_lname, 
CONCAT(COUNT(*), ' books' ) AS COUNT 
FROM books 
WHERE author_lname IS NOT NULL
GROUP BY author_fname, author_lname;

SELECT author_fname, author_lname, 
CASE
	WHEN COUNT(*) = 1 THEN '1 book'
    ELSE CONCAT(COUNT(*), ' books')
END AS COUNT
FROM books 
WHERE author_lname IS NOT NULL
GROUP BY author_fname, author_lname;







