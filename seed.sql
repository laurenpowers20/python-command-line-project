TRUNCATE TABLE CONTACTS;
TRUNCATE TABLE INFORMATION;

ALTER SEQUENCE contacts_id_seq RESTART WITH 1;
ALTER SEQUENCE information_id_seq RESTART WITH 1;

INSERT INTO contacts(contact_name, date_of_birth) VALUES ('Lemmy Kilmister', 1945); 
INSERT INTO contacts(contact_name, date_of_birth) VALUES ('Kathleen Hanna', 1968); 
INSERT INTO contacts(contact_name, date_of_birth) VALUES ('Tom Waits', 1949);
INSERT INTO contacts(contact_name, date_of_birth) VALUES ('Kim Deal', 1961);

INSERT INTO information(email, city, contacts_id) VALUES ('aceofspades@motorhead.com','London, England', 1);
INSERT INTO information(email, city, contacts_id) VALUES ('rebelgirl@bikinikill.com','New York, NY', 2);
INSERT INTO information(email, city, contacts_id) VALUES ('tom@jockeyfullofbourbon.com', 'New York, NY', 3);
INSERT INTO information(email, city, contacts_id) VALUES ('kim@cannonball.com', 'Dayton, OH', 4);

SELECT * FROM contacts JOIN information ON contacts.id = information.contacts_id WHERE contacts_id = 2;
