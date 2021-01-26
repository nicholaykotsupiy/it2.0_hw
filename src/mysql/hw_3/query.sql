-- 1
SELECT * 
FROM  users 
WHERE `mail.ru` = 1;

-- 2

SELECT id, fio 
FROM certificates 
WHERE year = NULL;

-- 3

UPDATE certificates 
SET series 'BH', number = -25444 
WHERE type_id = 5;

-- 4

DELETE FROM users 
WHERE type_id 
ORDER BY type_id DESC 
LIMIT 5;

-- 5

SELECT MIN(count_students) as min 
FROM organizations 
WHERE type_id = 5;

--  6

SELECT SUM(rating) as sum
FROM practice 
WHERE practice_id = 1888;

-- 7

SELECT COUNT(id) 
FROM organizations 
WHERE 1 

-- 8

SELECT * FROM news 
WHERE DATE_FORMAT(created_at) as format_date
ORDER BY format_date DESC
LIMIT 10;

-- 9

SELECT phone, name 
FROM directors 
WHERE organization = 'ВУЗ%';

-- 10

SELECT surname FROM students WHERE YEAR(birthday) = 1995

-- 11

SELECT publish_date, body 
FROM publishes 
LIMIT 5;
