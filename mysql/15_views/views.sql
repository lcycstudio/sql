USE tv_db;

SELECT title, released_year, genre, rating, first_name, last_name FROM reviews
JOIN series ON series.id = reviews.series_id
JOIN reviewers ON reviewers.id = reviews.reviewer_id;

-- virtual table
-- https://dev.mysql.com/doc/refman/8.0/en/views.html
CREATE VIEW full_reviews AS 
SELECT title, released_year, genre, rating, first_name, last_name FROM reviews
JOIN series ON series.id = reviews.series_id
JOIN reviewers ON reviewers.id = reviews.reviewer_id;

SELECT * FROM full_reviews WHERE genre = 'Animation';

SELECT genre, AVG(rating) FROM full_reviews GROUP BY genre;