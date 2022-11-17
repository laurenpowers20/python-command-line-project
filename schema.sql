DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS information;

CREATE TABLE contacts (
  id SERIAL PRIMARY KEY,
  contact_name VARCHAR(255),
  date_of_birth INTEGER
);

CREATE TABLE information (
  id SERIAL PRIMARY KEY,
  email VARCHAR(255),
  city VARCHAR(255),
  contacts_id INTEGER
);