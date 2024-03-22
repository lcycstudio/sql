USE tv_db;

-- HAVING clause specifies conditions on groups, typically formed by the GROUP BY clause.

CREATE OR REPLACE VIEW full_reviews AS 
SELECT title, released_year, genre, rating, first_name, last_name FROM reviews
JOIN series ON series.id = reviews.series_id
JOIN reviewers ON reviewers.id = reviews.reviewer_id;

SELECT * FROM full_reviews;

SELECT title, AVG(rating) FROM full_reviews GROUP BY title;

SELECT 
	title, 
    AVG(rating), 
    COUNT(rating) AS review_count
FROM full_reviews 
GROUP BY title HAVING COUNT(rating) > 2;