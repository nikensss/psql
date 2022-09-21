
INSERT INTO person (id, first_name, last_name, gender, date_of_birth, email, country_of_birth)
VALUES (1, 'Anne', 'Smith', 'Female', DATE '1988-01-09', NULL, 'Denmark');

INSERT INTO person (id, first_name, last_name, gender, date_of_birth, email, country_of_birth)
VALUES (1, 'Anne', 'Smith', 'Female', DATE '1988-01-09', NULL, 'Denmark')
ON CONFLICT (id) DO NOTHING;

INSERT INTO person (id, first_name, last_name, gender, date_of_birth, email, country_of_birth)
VALUES (1, 'Anne', 'Smith', 'Female', DATE '1988-01-09', 'anne.smith@internet.mail', 'Denmark')
ON CONFLICT (id) DO UPDATE SET email = EXCLUDED.email;

