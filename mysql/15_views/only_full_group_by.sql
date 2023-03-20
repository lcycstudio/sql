USE tv_db;

-- https://dev.mysql.com/doc/refman/8.0/en/sql-mode.html#sqlmode_strict_trans_tables
-- ONLY_FULL_GROUP_BY: Reject queries for which the select list, HAVING condition, 
-- or ORDER BY list refer to nonaggregated columns that are neither named in the GROUP BY 
-- clause nor are functionally dependent on (uniquely determined by) GROUP BY columns.


SET SESSION sql_mode = 'ONLY_FULL_GROUP_BY';

SELECT title, rating FROM series
JOIN reviews ON reviews.series_id = series.id 
GROUP BY title;

SHOW ERRORS;

SET SESSION sql_mode = '';

SELECT title, rating FROM series
JOIN reviews ON reviews.series_id = series.id 
GROUP BY title;


-- https://dev.mysql.com/doc/refman/8.0/en/sql-mode.html#sqlmode_no_zero_in_date
-- NO_ZERO_IN_DATE: The NO_ZERO_IN_DATE mode affects whether the server permits dates 
-- in which the year part is nonzero but the month or day part is 0. (This mode affects 
-- dates such as '2010-00-01' or '2010-01-00', but not '0000-00-00'. To control whether 
-- the server permits '0000-00-00', use the NO_ZERO_DATE mode.) The effect of NO_ZERO_IN_DATE 
-- also depends on whether strict SQL mode is enabled.

SET SESSION sql_mode = '';

SELECT DATE('2020-10-00');

SET SESSION sql_mode = 'NO_ZERO_IN_DATE';

SELECT DATE('2020-10-00');

SHOW WARNINGS;


-- https://dev.mysql.com/doc/refman/8.0/en/sql-mode.html#sqlmode_no_zero_date
-- NO_ZERO_DATE: The NO_ZERO_DATE mode affects whether the server permits '0000-00-00' as a valid date. 
-- Its effect also depends on whether strict SQL mode is enabled.

CREATE TABLE dates (d DATE);

INSERT INTO dates (d) VALUES ('2023-11-00');

SELECT * FROM dates;

SET SESSION sql_mode = 'NO_ZERO_IN_DATE,STRICT_TRANS_TABLES';

INSERT INTO dates (d) VALUES ('2023-11-00');

SHOW ERRORS;

SELECT @@GLOBAL.sql_mode;

SET SESSION sql_mode = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

SELECT @@SESSION.sql_mode;


