CREATE OR REPLACE TRIGGER tr_hospitals before INSERT ON hospitals FOR each row BEGIN SELECT sq_hospitals.NEXTVAL INTO :new.hospital_id FROM dual; END;