USE book_shop;

-- LENGTH(str)
-- Returns the length of the string str, measured in bytes. A multibyte character counts as 
-- multiple bytes. This means that for a string containing five 2-byte characters, LENGTH() 
-- returns 10, whereas CHAR_LENGTH() returns 5. Returns NULL if str is NULL.

SELECT LENGTH("Hey!");

SELECT CHAR_LENGTH('海豚');

SELECT CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') FROM books;