SELECT * FROM person
JOIN car ON person.car_id = car.id
ORDER BY person.id;

SELECT * FROM person
LEFT JOIN car ON person.car_id = car.id;
