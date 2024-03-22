USE tv_db;

-- https://dev.mysql.com/doc/refman/8.0/en/sql-mode.html

SELECT @@GLOBAL.sql_mode;

SELECT @@SESSION.sql_mode;

-- SET GLOBAL sql_mode = 'modes'; 

SELECT 3/0;

SHOW WARNINGS;

SET SESSION sql_mode = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';

SELECT 3/0;

SHOW WARNINGS;