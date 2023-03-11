USE book_shop;

-- CONCAT(str1,str2,...)
-- Returns the string that results from concatenating the arguments. 
-- May have one or more arguments. If all arguments are nonbinary strings, the result is a nonbinary string. 
-- If the arguments include any binary strings, the result is a binary string. 
-- A numeric argument is converted to its equivalent nonbinary string form.

SELECT CONCAT('h','e','l');

SELECT CONCAT(author_fname, authro_lname) FROM books;

SELECT CONCAT(author_fname, ' ', author_lname) FROM books;

SELECT CONCAT(author_fname, ' ', author_lname) AS 'author_name' FROM books;

SELECT CONCACT_WS('!','hi','bye','lol');

SELECT CONCAT_WS(' - ', title, author_fname, author_lname) FROM books;

