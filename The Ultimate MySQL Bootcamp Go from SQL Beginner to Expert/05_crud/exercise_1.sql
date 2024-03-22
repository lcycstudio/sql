-- Write the SQL that prints out the cat_id for all rows
SELECT cat_id FROM cats;

-- Write the SQL that prints out the name and breed for all rows
SELECT name, breed FROM cats;

-- Write the SQL that prints the tabby cats
SELECT name, age FROM cats where breed='Tabby';

-- Write the SQL that prints cat_id is the same as age
SELECT cat_id, age FROM cats where cat_id=age;


