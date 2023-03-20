USE ig_clone;

-- 1. We want to reward our users who have been around the longest.
-- Find the 5 oldest users
SELECT * FROM users ORDER BY created_at DESC LIMIT 5;


-- 2. What day of the week do most users register on?
-- We need to figure out when to schedule an add campaign
-- Solution 1
CREATE VIEW day_counts AS SELECT DAYOFWEEK(created_at) AS day_of_week FROM users;
SELECT 
	day_of_week, 
    COUNT(day_of_week) AS counts 
FROM day_counts 
GROUP BY day_of_week;

-- SOlution 2
SELECT 
	DAYOFWEEK(created_at) AS day_of_week, 
    COUNT(DAYOFWEEK(created_at)) AS counts 
FROM users
GROUP BY day_of_week
ORDER BY counts DESC;

-- Solution 3
SELECT
	DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 2;


-- 3. We want to target our inactive users with an email campaign.
-- Find the users who have never posted a photo
SELECT username, image_url FROM users
LEFT JOIN photos ON users.id = photos.user_id
WHERE photos.id IS NULL;


-- 4. We're running a new contest to see who can get the most likes on a single photo.
-- WHO WON??
SELECT 
	users.username,
	photos.id,
    photos.image_url,
    COUNT(*) AS total
FROM photos
INNER JOIN likes
ON likes.photo_id = photos.id
INNER JOIN users
ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;


-- 5. Our investors want to know...
-- How many times does the average user post photos?
SELECT 
	(SELECT Count(*) FROM   photos) / (SELECT Count(*) FROM   users) AS avg;
    

-- 6. A brand wants to know which hashtags to use in a post
-- What are the top 5 most commonly used hashtags?
SELECT 
	tag_id, 
    tags.tag_name,
    COUNT(*) AS counts 
FROM photo_tags 
INNER JOIN tags
ON photo_tags.tag_id = tags.id
GROUP BY tag_id 
ORDER BY counts DESC 
LIMIT 5;


-- 7. We have a small problem with bots on our site...
-- Find users who have liked every single photo on the site
-- Solution 1
CREATE VIEW user_photo_counts AS
SELECT 
	users.username,
    COUNT(likes.photo_id) AS counts
FROM likes
INNER JOIN photos
ON likes.photo_id = photos.id
INNER JOIN users
ON likes.user_id = users.id
GROUP BY likes.user_id
ORDER BY counts DESC;
SELECT * FROM user_photo_counts WHERE counts = (SELECT COUNT(*) FROM photos);

-- Solution 2
SELECT 
	users.username,
    COUNT(likes.photo_id) AS counts
FROM likes
INNER JOIN users
ON likes.user_id = users.id
GROUP BY likes.user_id
HAVING counts = (SELECT COUNT(*) FROM photos)
ORDER BY counts DESC;
