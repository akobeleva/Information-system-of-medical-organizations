BEGIN EXECUTE IMMEDIATE 'DROP TABLE USERS_PATIENTS'; EXCEPTION   WHEN OTHERS THEN      IF SQLCODE != -942 THEN         RAISE; END IF; END;