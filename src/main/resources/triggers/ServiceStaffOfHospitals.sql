CREATE OR REPLACE TRIGGER tr_ss_of_hosp before INSERT ON ss_of_hospitals FOR each row BEGIN SELECT sq_ss_of_hosp.NEXTVAL INTO :new.id FROM dual; END;