CREATE OR REPLACE TRIGGER tr_departments before INSERT ON departments FOR each row BEGIN    SELECT sq_departments.NEXTVAL    INTO :new.department_id    FROM dual; END;