SELECT COUNT(*) total, gender 
FROM person 
GROUP BY gender
ORDER BY total DESC;

SELECT DISTINCT gender 
FROM person 
ORDER BY gender DESC;

SELECT *
FROM person
WHERE email IS NOT NULL;

SELECT *
FROM person
WHERE country_of_birth IN ('France', 'Spain')
ORDER BY country_of_birth;

SELECT *
FROM person
WHERE date_of_birth
BETWEEN DATE '2000-01-01' AND '2015-01-01';

SELECT * FROM person WHERE email LIKE '%@gmail%';
SELECT * FROM person WHERE email LIKE '____@gmail%';

SELECT * FROM person WHERE email ILIKE '____@gmail%'; -- case insensitive

