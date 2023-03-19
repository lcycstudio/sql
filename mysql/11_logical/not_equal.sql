USE book_shop;

-- not equal: !=

SELECT * FROM books WHERE released_year != 2017;

SELECT title, author_lname FROM books WHERE author_lname = 'Gaiman';

SELECT title, author_lname FROM books WHERE author_lname != 'Gaiman';