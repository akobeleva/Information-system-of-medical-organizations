CREATE OR REPLACE TRIGGER tr_pol_card before INSERT ON polyclinic_card FOR each row BEGIN SELECT sq_pol_card.NEXTVAL INTO :new.card_id FROM dual; END;