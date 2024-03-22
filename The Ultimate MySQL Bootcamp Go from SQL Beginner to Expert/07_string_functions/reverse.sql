USE book_shop;

-- REVERSE(str)
-- Returns the string str with the order of the characters reversed, or NULL if str is NULL.

SELECT REVERSE('chicken nuggets');

SELECT REVERSE(NULL);

SELECT REVERSE(author_fname) FROM books;

SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;