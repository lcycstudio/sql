USE shirt_db;

-- Update all polo shirts size to L
SELECT * FROM shirts WHERE article='polo shirt';
UPDATE shirts SET shirt_size='L' WHERE article='polo shirt';

-- Update the shirt last worn 15 days ago to 0
SELECT * FROM shirts WHERE last_worn=15;
UPDATE shirts SET last_worn=0 WHERE last_worn=15;


-- Update all white shirts and change size to 'XS' and color to 'off white'
SELECT * FROM shirts WHERE color='white';
UPDATE shirts SET shirt_size='XS', color='off white' WHERE color='white';