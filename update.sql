SET SQL_SAFE_UPDATES = 0;

UPDATE customers
SET email = 'ppicasso@gmail.com' WHERE id = 1;

UPDATE customers
SET email = 'lincoln@us.gov' WHERE id = 2;

UPDATE customers
SET email = 'hello@napoleon.me' WHERE id = 3;

UPDATE salespersons
SET staff_id = '00001' WHERE id = 1;
UPDATE salespersons
SET staff_id = '00002' WHERE id = 2;
UPDATE salespersons
SET staff_id = '00003' WHERE id = 3;
UPDATE salespersons
SET staff_id = '00004' WHERE id = 4;
UPDATE salespersons
SET staff_id = '00005' WHERE id = 5;
UPDATE salespersons
SET staff_id = '00006' WHERE id = 6;
UPDATE salespersons
SET staff_id = '00007' WHERE id = 7;
UPDATE salespersons
SET staff_id = '00008' WHERE id = 8;