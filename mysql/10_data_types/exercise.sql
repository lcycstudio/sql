USE book_shop;

-- What is a good use case for CHAR?
-- It is good for character fields with fixed length, 
-- e.g., 'AB', 'BC' as abbreviations for provinces.
-- Used for text that we know has a fixed length, e.g., State abbreviations, 
-- abbreviated company names, etc.


-- Filling the Blanks
CREATE TABLE inventory (
	item_name VARCHAR(100),
    price DECIMAL(8,2),
    quantity INT DEFAULT 0
);

-- What's the difference between DATETIME and TIMESTAMP?
-- DATETIME is used in most data fields.
-- TIMESTAMP takes up much less memory.

-- They both store datetime information, but there's a difference in the range, 
-- TIMESTAMP has a smaller range. TIMESTAMP also takes up less space. 
-- TIMESTAMP is used for things like meta-data about when something is created
-- or updated.


-- Print out the current time
SELECT CURTIME();

-- Print out the current date
SELECT CURDATE();

-- Print out the current day of the week: number and day name
SELECT DATE_FORMAT(CURDATE(), '%w');
SELECT DAYOFWEEK(CURDATE());

SELECT DATE_FORMAT(CURDATE(), '%W');
SELECT DAYNAME(CURDATE());

-- Print out the current day and time using this format: 
-- mm/dd/yyyy
SELECT DATE_FORMAT(NOW(), '%m/%d/%Y');
-- January 2nd at 3:15
SELECT DATE_FORMAT(NOW(), '%M %D at %k:%i');

-- Create a tweets table that stores content, username and time it was created
CREATE TABLE tweets (
	content VARCHAR(180),
    username VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO tweets (content, username) 
VALUES ('this is my tweet lol', 'chen');
