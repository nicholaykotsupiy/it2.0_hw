-- 
INSERT INTO `city` 
VALUE 
( 'Краматорск', 84313 ),
( 'Марьинка', 85600 );

-- 
DELETE FROM `news`;

-- 
SELECT `name`, `surname` FROM `students`;

-- 
SELECT `name` FROM `students`

-- 
UPDATE `city` SET `name`= 'Славянск',`post_index`= 11111 WHERE `name` = 'Краматорск';

--
SELECT `name`, `post_index` FROM `city`
