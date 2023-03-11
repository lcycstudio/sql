-- Delete

-- Delete all old shirts and last worn 200 days ago
SELECT * FROM shirts WHERE last_worn=200;
DELETE FROM shirts WHERE last_worn=200;

-- Delete all tank tops
SELECT * FROM shirts WHERE article='tank top';
DELETE FROM shirts WHERE article='tank top';

-- Drop the entire shirts table
DROP TABLE shirts;
DESC shirts;