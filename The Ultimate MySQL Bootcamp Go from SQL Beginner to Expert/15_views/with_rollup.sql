USE tv_db;

-- WITH ROLLUP: The GROUP BY clause permits a WITH ROLLUP modifier that causes summary output
-- to include extra rows that represent higher-level (that is, super-aggregate) summary operations.

CREATE OR REPLACE VIEW full_reviews AS 
SELECT title, released_year, genre, rating, first_name, last_name FROM reviews
JOIN series ON series.id = reviews.series_id
JOIN reviewers ON reviewers.id = reviews.reviewer_id;

SELECT * FROM full_reviews;

SELECT title, AVG(rating) FROM full_reviews GROUP BY title;

SELECT 
	title, 
	AVG(rating) 
FROM full_reviews 
GROUP BY title WITH ROLLUP;

SELECT 
	title, 
	COUNT(rating) 
FROM full_reviews 
GROUP BY title WITH ROLLUP;

SELECT
	released_year,
    AVG(rating)
FROM full_reviews
GROUP BY released_year WITH ROLLUP;

SELECT
	released_year,
    genre,
    AVG(rating)
FROM full_reviews
GROUP BY released_year, genre WITH ROLLUP;
