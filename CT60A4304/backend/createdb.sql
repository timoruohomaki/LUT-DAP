/*
CT60A4304 Basics of Database Systems
Course Project: CRM System
Database author: Timo Ruohomäki
*/

DROP TABLE IF EXISTS contactPersons;

CREATE TABLE contactPersons (
  contact_id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT
);

DROP TABLE IF EXISTS lead;

CREATE TABLE lead(
  lead_id INTEGER PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  company TEXT,
  street TEXT,
  zip TEXT,
  city TEXT,
  email TEXT,
  phone TEXT
);