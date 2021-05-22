CREATE ROLE system_administrator
GRANT ALL PRIVILEGES TO system_administrator
CREATE ROLE patient
GRANT SELECT any table TO patient
GRANT INSERT, DELETE ON POLYCLINIC_CARD TO patient
GRANT UPDATE ON PATIENTS TO patient
CREATE ROLE polyclinic_registry
GRANT SELECT any table TO polyclinic_registry
GRANT INSERT, UPDATE, DELETE ON PATIENTS TO polyclinic_registry
GRANT INSERT, UPDATE, DELETE ON POLYCLINIC_CARD TO polyclinic_registry
GRANT INSERT, UPDATE, DELETE ON DOCTORS_OF_POLYCLINICS TO polyclinic_registry
GRANT INSERT, UPDATE, DELETE ON SS_OF_POLYCLINICS TO polyclinic_registry
CREATE ROLE hospital_registry
GRANT INSERT, UPDATE, DELETE ON HOSPITAL_CARD TO hospital_registry
GRANT INSERT, UPDATE, DELETE ON DOCTORS_OF_HOSPITALS TO hospital_registry
GRANT INSERT, UPDATE, DELETE ON SS_OF_HOSPITALS TO hospital_registry