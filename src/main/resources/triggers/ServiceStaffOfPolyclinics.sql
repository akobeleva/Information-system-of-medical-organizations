CREATE OR REPLACE TRIGGER tr_ss_of_pol before INSERT ON ss_of_polyclinics FOR each row BEGIN SELECT sq_ss_of_pol.NEXTVAL INTO :new.id FROM dual; END;