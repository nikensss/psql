ALTER TABLE person ADD COLUMN car_id BIGINT UNIQUE CONSTRAINT person_car_id_fkey REFERENCES car (id);
