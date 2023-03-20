USE tv_db;

-- updateable views
-- https://dev.mysql.com/doc/refman/8.0/en/view-updatability.html
CREATE VIEW full_reviews AS 
SELECT title, released_year, genre, rating, first_name, last_name FROM reviews
JOIN series ON series.id = reviews.series_id
JOIN reviewers ON reviewers.id = reviews.reviewer_id;

SELECT * FROM full_reviews;

CREATE VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year;

SELECT * FROM ordered_series;

INSERT INTO ordered_series (title, released_year, genre)
VALUES ('The Great', 2020, 'Comedy');

SELECT * FROM ordered_series;

DELETE FROM ordered_series WHERE title = 'The Great';