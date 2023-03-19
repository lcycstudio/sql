USE book_shop;

SELECT NOW();

SELECT CURRENT_TIMESTAMP;

SELECT TIMESTAMP('2023-03-13 15:19:00');

SELECT TIMESTAMP(NOW());

CREATE TABLE captions (
	text VARCHAR(100),
    created_at TIMESTAMP default CURRENT_TIMESTAMP
);

INSERT INTO captions (text) VALUES ('just me and the boys chilling');

INSERT INTO captions (text) VALUES ('beautiful moon light');

SELECT * FROM captions;

CREATE TABLE captions2 (
	text VARCHAR(100),
    created_at TIMESTAMP default CURRENT_TIMESTAMP,
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO captions2 (text) VALUES ('I love life!');

SELECT * FROM captions2;

UPDATE captions2 SET text='I love live!!!' WHERE text='I love life!';

SELECT * FROM captions2;

UPDATE captions2 SET text='I love live!!!!!!!';

SELECT * FROM captions2;