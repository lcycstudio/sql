USE book_shop;

SELECT MIN(released_year) FROM books;

SELECT MIN(author_lname) FROM books;

SELECT MIN(author_lname), MAX(author_lname) FROM books;

-- SELECT MAX(pages), title FROM books;
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;