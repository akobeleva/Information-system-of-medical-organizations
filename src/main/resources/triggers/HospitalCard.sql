CREATE OR REPLACE TRIGGER tr_hosp_card before INSERT ON hospital_card FOR each row BEGIN SELECT sq_hosp_card.NEXTVAL INTO :new.card_id FROM dual; END;