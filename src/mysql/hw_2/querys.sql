-- 
INSERT INTO `cities`( `name`, `post_index` ) 
VALUE 
( 'Краматорск', 84313 ),
( 'Марьинка', 85600 );

-- 
DELETE FROM `news` WHERE 1;

-- 
SELECT `name`, `surname` FROM `students`;

-- 
SELECT * FROM `users`

-- 
UPDATE `cities` SET `number`= 5, `status`= 'middle' WHERE 1;

--
SELECT `number`, `date_sale` FROM `certificates`
