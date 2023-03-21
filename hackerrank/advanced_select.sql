-- Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:
-- Equilateral: It's a triangle with 3 sides of equal length.
-- Isosceles: It's a triangle with 2 sides of equal length.
-- Scalene: It's a triangle with 3 sides of differing lengths.
-- Not A Triangle: The given values of A, B, and C don't form a triangle.
CREATE TABLE trialges (
    a INT,
    b INT,
    c INT
);

SELECT
CASE
    WHEN a + b <= c OR a + c <= b OR b + c <= a THEN 'Not A Triangle'
    WHEN a = b AND a = c AND b = c THEN 'Equilateral'
    WHEN a = b OR a = c OR b = c THEN 'Isosceles'
    ELSE 'Scalene'
END as triangles_type
FROM triangles;