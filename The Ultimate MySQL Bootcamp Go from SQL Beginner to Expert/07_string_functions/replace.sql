USE book_shop;

-- REPLACE(str,from_str,to_str)
-- Returns the string str with all occurrences of the string from_str replaced by the string to_str. 
-- REPLACE() performs a case-sensitive match when searching for from_str.

SELECT REPLACE('Hello World', 'Hell', '%$#@');

SELECT REPLACE('cheese bread coffee milk', ' ', ' and ');

SELECT REPLACE('I am Colt!', 'colt', 'Mr. Steele');

SELECT REPLACE(title, 'e', '3') FROM books;

SELECT REPLACE(title, ' ', '-') FROM books;
