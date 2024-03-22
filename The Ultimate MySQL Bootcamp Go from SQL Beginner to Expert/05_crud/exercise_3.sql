USE pet_shop;

-- Delete all 4 year old cats:
DELETE FROM catas WHERE age=4;

-- Delete cats where cat_id is the same as their age:
DELETE FROM cats WHERE cat_id=age;

-- Delete all cats:
DELETE FROM cats;