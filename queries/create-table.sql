CREATE TABLE person (
  -- BIGSERIAL has auto increment built in
  id BIGSERIAL NOT NULL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  gender VARCHAR(7) NOT NULL,
  date_of_birth DATE NOT NULL
);

ALTER TABLE person ADD COLUMN email VARCHAR(150);
ALTER TABLE person ADD COLUMN country_of_birth VARCHAR(50);
ALTER TABLE person ALTER COLUMN gender TYPE VARCHAR(20);

CREATE TABLE "user" (
  id BIGSERIAL PRIMARY KEY,
  username VARCHAR(45) NOT NULL,
  email VARCHAR(200) NOT NULL,
  password VARCHAR(255) NOT NULL,
  marketing_emails BOOLEAN DEFAULT FALSE
);

