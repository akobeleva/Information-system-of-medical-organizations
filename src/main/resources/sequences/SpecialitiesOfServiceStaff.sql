DECLARE v_dummy NUMBER; BEGIN SELECT 1 INTO v_dummy FROM user_sequences WHERE sequence_name LIKE 'SQ_SPEC_SS'; EXCEPTION  WHEN no_data_found THEN EXECUTE IMMEDIATE 'create sequence sq_spec_ss START WITH 1 INCREMENT BY 1 NOMAXVALUE'; END;