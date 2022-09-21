-- without a WHERE clause, the update is applied to all table entries
-- UPDATE person SET email = 'emctavish@email.com';

UPDATE person SET email = 'emctavish@email.com' WHERE id = 7;
UPDATE person SET email = 'emctavish@gmail.com' WHERE id = 7;
UPDATE person SET gender = 'Genderfluid', country_of_birth = 'United Kingdom', date_of_birth = DATE '1969-04-20' WHERE id = 7;
