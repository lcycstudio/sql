USE tv_db;

-- Print title and rating for all series
SELECT title, rating FROM series
INNER JOIN reviews ON series.id = reviews.series_id;

-- Print title and average rating for all series
-- sorted by average rating
SELECT title, AVG(rating) AS avg_rating FROM series
INNER JOIN reviews ON series.id = reviews.series_id
GROUP BY title
ORDER BY avg_rating;

-- Print first_name, last_name and rating for all reviewers
SELECT first_name, last_name, rating FROM reviewers
INNER JOIN reviews ON reviewers.id = reviews.reviewer_id;

-- Print series that have no reviews
SELECT title as unreviewed_series FROM series
LEFT JOIN reviews ON series.id = reviews.series_id
WHERE rating IS NULL;

SELECT title AS unreviewed_series FROM reviews
RIGHT JOIN series ON series.id = reviews.series_id
WHERE rating IS NULL;

-- Print genre and average rating 
SELECT genre, ROUND(AVG(rating), 2) as avg_rating FROM series
INNER JOIN reviews ON series.id = reviews.series_id
GROUP BY genre;

-- Print first_name, last_name, number of reviews, 
-- minimum rating, maximum rating, average rating, status
SELECT 
	first_name, 
    last_name,
    IFNULL(COUNT(rating), 0) AS COUNT,
    IFNULL(MIN(rating), 0) AS MIN,
    IFNULL(MAX(rating), 0) AS MAX,
    IFNULL(AVG(rating), 0) AS AVG,
CASE
	WHEN COUNT(rating) >= 10 THEN 'POWERUSER'
	WHEN COUNT(rating) > 0 THEN 'ACTIVE'
    ELSE 'INACTIVE'
END AS STATUS
FROM reviews
RIGHT JOIN reviewers ON reviews.reviewer_id = reviewers.id
GROUP BY first_name, last_name;

-- USING IF 
SELECT 
    first_name,
    last_name,
    COUNT(rating) AS count,
    IFNULL(MIN(rating), 0) AS min,
    IFNULL(MAX(rating), 0) AS max,
    ROUND(IFNULL(AVG(rating), 0), 2) AS average,
    IF(COUNT(rating) > 0,
        'ACTIVE',
        'INACTIVE') AS status
FROM
    reviewers
        LEFT JOIN
    reviews ON reviewers.id = reviews.reviewer_id
GROUP BY first_name , last_name;

-- Print title, rating and reviewer with first_name and last_name
SELECT 
	title, 
    rating, 
    CONCAT(first_name, ' ', last_name) AS reviewer 
FROM reviews
INNER JOIN reviewers ON reviews.reviewer_id = reviewers.id
INNER JOIN series ON reviews.series_id = series.id
ORDER BY title;