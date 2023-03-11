USE book_shop;

SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;

SELECT * FROM books
WHERE pages = (SELECT MAX(pages) FROM books);

SELECT title, pages FROM books
WHERE pages = (SELECT MAX(pages) FROM books);

INSERT INTO books (title, pages)
VALUES ('Another long book', 634);

SELECT title, pages FROM books
WHERE pages = (SELECT MAX(pages) FROM books);

SELECT title, pages FROM books
WHERE pages = (SELECT MIN(pages) FROM books);

SELECT MIN(released_year) FROM books;

SELECT title, released_year FROM bookss
WHERE released_year = (SELECT MIN(released_year) FROM books);

