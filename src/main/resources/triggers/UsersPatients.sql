CREATE OR REPLACE TRIGGER tr_users_patients before INSERT ON users_patients FOR each row BEGIN SELECT sq_users_patients.NEXTVAL INTO :new.id FROM dual; END;