CREATE OR REPLACE TRIGGER tr_service_staff before INSERT ON service_staff FOR each row BEGIN    SELECT sq_service_staff.NEXTVAL    INTO :new.ss_id    FROM dual; END;