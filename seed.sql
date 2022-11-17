TRUNCATE TABLE CONTACTS;
TRUNCATE TABLE INFORMATION;

ALTER SEQUENCE contacts_id_seq RESTART WITH 1;
ALTER SEQUENCE information_id_seq RESTART WITH 1;


INSERT INTO contacts(contact_name, date_of_birth) VALUES ('Lemmy Kilmister', 1945); 
INSERT INTO contacts(contact_name, date_of_birth) VALUES ('Kathleen Hanna', 1968); 

INSERT INTO information(email, city, contacts_id) VALUES ('aceofspades@motorhead.com','London, England', 1);
INSERT INTO information(email, city, contacts_id) VALUES ('rebelgirl@bikinkill.com','New York, NY', 2);

