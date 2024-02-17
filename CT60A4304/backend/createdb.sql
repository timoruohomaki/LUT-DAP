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