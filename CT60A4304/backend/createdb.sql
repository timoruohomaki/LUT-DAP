/*
CT60A4304 Basics of Database Systems
Course Project: CRM System
Database author: Timo Ruohomäki
*/

DROP TABLE IF EXISTS lead;

CREATE TABLE lead(
  lead_id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  company TEXT,
  street TEXT,
  zip TEXT,
  city TEXT,
  country TEXT,
  email TEXT,
  phone TEXT
);

DROP TABLE IF EXISTS contactPersons;

CREATE TABLE contactPersons (
  con_id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  FK_account INTEGER,
);

DROP TABLE IF EXISTS account;

CREATE TABLE account (
  acc_id INTEGER PRIMARY KEY AUTOINCREMENT,
  company TEXT,
  industry TEXT
);

DROP TABLE IF EXISTS communication;

CREATE TABLE communication (
  comms_id INTEGER PRIMARY KEY AUTOINCREMENT,
  company TEXT,
  industry TEXT,
  FK_contact INTEGER,
  FK_salesRep INTEGER,
  FK_opp INTEGER
);

DROP TABLE IF EXISTS salesPerson;

CREATE TABLE salesPerson (
  sales_id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  phone TEXT,
  email TEXT,
  territory TEXT
);

DROP TABLE IF EXISTS opportunity;

CREATE TABLE opportunity (
  opp_id INTEGER PRIMARY KEY AUTOINCREMENT,
  opp_title TEXT,
  opp_value INTEGER,
  opp_est_date TEXT,
  FK_acc INTEGER,
  FK_con INTEGER,
  FK_salesRep INTEGER
);

DROP TABLE IF EXISTS quotation;

CREATE TABLE quotation (
  quo_id INTEGER PRIMARY KEY AUTOINCREMENT,
  quote_number TEXT,
  quote_date TEXT,
  FK_account INTEGER
);

DROP TABLE IF EXISTS quoteLineItem;

CREATE TABLE quoteLineItem (
  quoLine_id INTEGER PRIMARY KEY AUTOINCREMENT,
  product_code TEXT,
  product_name TEXT,
  quantity INTEGER,
  unit_price REAL,
  FK_quotation INTEGER
);