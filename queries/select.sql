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

SELECT MAX(price) FROM car;
SELECT MIN(price) FROM car;
SELECT AVG(price) FROM car;
SELECT ROUND(MAX(price)) FROM car;

SELECT COUNT(*), make, model
FROM car
GROUP BY make, model
ORDER BY COUNT(*) DESC;

SELECT make, SUM(price) total
FROM car
GROUP BY make
ORDER BY total DESC;

SELECT *, ROUND(price * 0.1, 2) discount, ROUND(price * 0.9, 2) discounted
FROM car;

SELECT first_name, last_name, COALESCE(email, 'not provided') email
FROM person;

-- to avoid throwing when dividing by 0
SELECT COALESCE(10 / NULLIF(0, 0), 0);
-- NULLIF(a,b) returns NULL if a = b
-- COEALESCE will return the second argument only if the first one is NULL

SELECT NOW();
SELECT NOW()::DATE;
SELECT NOW()::TIME;

SELECT NOW() - INTERVAL '3827 milliseconds';
SELECT NOW() - INTERVAL '3827 seconds';
SELECT NOW() - INTERVAL '3827 days';
SELECT (NOW() - INTERVAL '3827 days')::DATE;

SELECT EXTRACT(YEAR FROM NOW() - INTERVAL '193 days');
SELECT EXTRACT(CENTURY FROM NOW() - INTERVAL '193 days');
SELECT EXTRACT(YEAR FROM NOW() - INTERVAL '193 days');
SELECT EXTRACT(MILLISECONDS FROM TIMESTAMP '2022-09-19 16:18:08.123456+00');

SELECT DISTINCT ON (make) id, make, model, price FROM car ORDER BY make, price DESC;
