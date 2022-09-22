CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE car_uuid (
	id UUID NOT NULL PRIMARY KEY DEFAULT uuid_generate_v4(),
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19, 2) NOT NULL CHECK (price > 0)
);


CREATE TABLE person_uuid (
  id UUID NOT NULL PRIMARY KEY DEFAULT uuid_generate_v4(),
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	gender VARCHAR(50),
	email VARCHAR(50) UNIQUE,
	date_of_birth DATE NOT NULL, 
	country_of_birth VARCHAR(50) NOT NULL,
	car_id UUID REFERENCES car_uuid (id) UNIQUE
);

INSERT INTO car_uuid (make, model, price) VALUES ('Mercedes-Benz', 'C-Class', '32171.88');
INSERT INTO car_uuid (make, model, price) VALUES ('Ford', 'F450', '118726.55');
INSERT INTO car_uuid (make, model, price) VALUES ('Pontiac', 'Firebird Formula', '77236.35');

INSERT INTO person_uuid (first_name, last_name, email, gender, date_of_birth, country_of_birth) VALUES ('Alleen', 'Fillan', 'afillan0@youku.com', 'Female', '1936-04-23', 'China');
INSERT INTO person_uuid (first_name, last_name, email, gender, date_of_birth, country_of_birth) VALUES ('Jessa', 'Fitzroy', 'jfitzroy1@unicef.org', 'Female', '1932-10-30', 'Malaysia');
INSERT INTO person_uuid (first_name, last_name, email, gender, date_of_birth, country_of_birth) VALUES ('Simona', 'Ing', 'sing2@mit.edu', 'Female', '1980-11-09', 'Georgia');
INSERT INTO person_uuid (first_name, last_name, email, gender, date_of_birth, country_of_birth) VALUES ('Jojo', 'Powys', 'jpowys3@technorati.com', 'Female', '1990-09-29', 'China');
INSERT INTO person_uuid (first_name, last_name, email, gender, date_of_birth, country_of_birth) VALUES ('Brad', 'Kimmings', 'bkimmings4@blogspot.com', 'Male', '1945-01-02', 'Colombia');

