USE book_shop;

SELECT INSERT('Hello Bobby', 6, 0, ' There');

SELECT INSERT('Hello Bobby', 5, 0, ' There');

SELECT LEFT('omghahalol!', 3);

SELECT RIGHT('omghahalol!', 3);

SELECT LEFT(author_lname, 1) FROM books;

SELECT REPEAT('ha', 4);

SELECT TRIM('      boston ');

SELECT TRIM('    san antonia   ');

SELECT TRIM('......san antonio....');

SELECT TRIM(LEADING '.' FROM '......san antonio....');

SELECT TRIM(BOTH '.' FROM '......san antonio....');

SELECT TRIM(TRAILING '.' FROM '......san antonio....');