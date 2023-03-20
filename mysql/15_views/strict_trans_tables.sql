USE tv_db;

-- https://dev.mysql.com/doc/refman/8.0/en/sql-mode.html#sqlmode_strict_trans_tables
-- STRICT_TRANS_TABLES: Enable strict SQL mode for transactional storage engines, 
-- and when possible for nontransactional storage engines. For details, see Strict SQL Mode.

SELECT @@SESSION.sql_mode;

DESC reviews;

INSERT INTO reviews (rating) VALUES ('hi');

SET SESSION sql_mode = '';

INSERT INTO reviews (rating) VALUES ('hi');

SHOW WARNINGS;

SELECT * FROM reviews;

SET SESSION sql_mode = 'STRICT_TRANS_TABLES';

INSERT INTO reviews (rating) VALUES ('hi');

SHOW WARNINGS;
