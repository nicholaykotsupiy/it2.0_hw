-- 1

SELECT name FROM genres
INNER JOIN books ON genres.id != books.genre_id;

-- 2

SELECT u.surname, u.name, a.name FROM users as u
INNER JOIN areas as a
ON u.area_id = a.id ORDER BY a.name ASC LIMIT 4

-- 3

SELECT COUNT(n.category_id), c.id  FROM news as n
INNER JOIN categories as c 
GROUP BY n.category_id;

-- 4

SELECT c.name a.name FROM cities as c
INNER JOIN areas as a
ON c.area_id = a.id

-- 5

SELECT s.name, d.name FROM schools as s
INNER JOIN districts as d
ON s.district_id = d.id
