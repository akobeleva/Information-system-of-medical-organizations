BEGIN EXECUTE IMMEDIATE 'DROP TABLE HOSPITAL_CARD'; EXCEPTION   WHEN OTHERS THEN      IF SQLCODE != -942 THEN         RAISE; END IF; END;