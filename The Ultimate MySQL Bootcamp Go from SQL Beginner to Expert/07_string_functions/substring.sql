USE book_shop;

-- SUBSTRING(str,pos), SUBSTRING(str FROM pos), SUBSTRING(str,pos,len), SUBSTRING(str FROM pos FOR len)
-- SUBSTR is a synonym for SUBSTRING()
-- The forms without a len argument return a substring from string str starting at position pos.
-- The forms with a len argument return a substring len characters long from string str, starting 
-- at position pos. The forms that use FROM are standard SQL syntax. It is also possible to use a 
-- negative value for pos. In this case, the beginning of the substring is pos characters from the 
-- end of the string, rather than the beginning. A negative value may be used for pos in any of the 
-- forms of this function. A value of 0 for pos returns an empty string.

SELECT SUBSTRING('Hello World', 1, 4);

SELECT SUBSTRING('Hello World', 1, 6);

SELECT SUBSTRING('Hello World', 2, 7);

SELECT SUBSTRING('Hello World', 7);

SELECT SUBSTRING('Hello World', -1);

SELECT SUBSTRING('Hello World', -3);

SELECT SUBSTR(title, 1, 15) FROM books;

SELECT SUBSTR(author_lname, 1, 1) AS initial, author_lname FROM books;
