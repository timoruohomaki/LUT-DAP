/*
CT60A4304 Basics of Database Systems
Course Project: CRM System
Database author: Timo Ruohomäki
*/


/* LEADS */

insert into lead (first_name, last_name, company, street, zip, city, country, email, phone, FK_salesRep) values ('Way', 'Rodolico', 'Hilpert-Greenfelder', '38 Bonner Crossing', null, 'Bojongaren', 'Indonesia', 'wrodolico0@dropbox.com', '707-752-4870',1);
insert into lead (first_name, last_name, company, street, zip, city, country, email, phone, FK_salesRep) values ('Madison', 'Kupis', 'Rodriguez-Bogisich', '4900 Melrose Circle', '456664', 'Kanashevo', 'Russia', 'mkupis1@mit.edu', '937-962-1643',2);
insert into lead (first_name, last_name, company, street, zip, city, country, email, phone, FK_salesRep) values ('Amabel', 'Chalcot', 'Steuber and Sons', '3 Rusk Crossing', null, 'Nanjie', 'China', 'achalcot2@gov.uk', '548-867-3529',2);
insert into lead (first_name, last_name, company, street, zip, city, country, email, phone, FK_salesRep) values ('Darla', 'Trevain', 'Fahey-Kiehn', '823 Daystar Drive', '197758', 'Sertolovo', 'Russia', 'dtrevain3@sakura.ne.jp', '414-194-6030',4);
insert into lead (first_name, last_name, company, street, zip, city, country, email, phone, FK_salesRep) values ('Rodrique', 'Ertelt', 'Gorczany, Mertz and Davis', '081 Lukken Road', null, 'Talok', 'Indonesia', 'rertelt4@digg.com', '253-861-1782',3);
insert into lead (first_name, last_name, company, street, zip, city, country, email, phone, FK_salesRep) values ('Jody', 'Deverall', 'Rutherford, Wyman and Nolan', '486 Warner Crossing', '582 46', 'Linköping', 'Sweden', 'jdeverall5@mit.edu', '770-480-0479',1);
insert into lead (first_name, last_name, company, street, zip, city, country, email, phone, FK_salesRep) values ('Decca', 'Wendover', 'Kassulke Group', '69 Veith Terrace', null, 'San Bernardino', 'Paraguay', 'dwendover6@google.pl', '397-287-6922',3);
insert into lead (first_name, last_name, company, street, zip, city, country, email, phone, FK_salesRep) values ('Sandie', 'Revill', 'Stark-Beatty', '1902 Surrey Junction', null, 'Haoguantun', 'China', 'srevill7@ehow.com', '988-445-8502',2);

/* ACCOUNTS */

insert into account (company, industry, street, postal_code, city, FK_acc_rep) values ('Lesch Group', 'Medical/Dental Instruments', '3293 Sycamore Parkway', '129 55', 'Hägersten',1);
insert into account (company, industry, street, postal_code, city, FK_acc_rep) values ('Hermiston, Tremblay and Mayer', 'Telecommunications Equipment', '8 Carey Street', '43600', 'Cibangban Girang',2);
insert into account (company, industry, street, postal_code, city, FK_acc_rep) values ('Halvorson-Pfannerstill', 'Major Banks', '2 Gina Way', '16005', 'Tamahu',5);
insert into account (company, industry, street, postal_code, city, FK_acc_rep) values ('Frami-Botsford', 'Computer Software: Prepackaged Software', '200 Dryden Trail', '27884', 'Ajman',4);
insert into account (company, industry, street, postal_code, city, FK_acc_rep) values ('Heller-Welch', 'Real Estate', '3379 Hovde Park', '62-290', 'Mieścisko',6);
insert into account (company, industry, street, postal_code, city, FK_acc_rep) values ('Gerhold, Lemke and Sporer', 'Clothing/Shoe/Accessory Stores', '06 1st Drive', '59550-000', 'João Câmara',2);
insert into account (company, industry, street, postal_code, city, FK_acc_rep) values ('Zieme-Dickinson', 'Manufacturing', '5332 David Circle', '34600', 'Sinmak',3);
insert into account (company, industry, street, postal_code, city, FK_acc_rep) values ('Hane-Koepp', 'Manufacturing', '293 Porter Alley', '30000', 'Batticaloa',3);
insert into account (company, industry, street, postal_code, city, FK_acc_rep) values ('Medhurst-Lang', 'Biotechnology: Laboratory Analytical Instruments', '983 Farwell Terrace', '585 97', 'Linköping',5);
insert into account (company, industry, street, postal_code, city, FK_acc_rep) values ('Denesik, Boehm and Emmerich', 'Biotechnology: Biological Products (No Diagnostic Substances)', '1 Del Mar Hill', '130537', 'Villanueva',2);
insert into account (company, industry, street, postal_code, city, FK_acc_rep) values ('Cartwright and Sons', 'Engineering & Construction', '0 Meadow Valley Center', '07104 CEDEX', 'Annonay',3);
insert into account (company, industry, street, postal_code, city, FK_acc_rep) values ('Boyle-Klocko', 'n/a', '9555 Annamark Way', '6207', 'Balas',6);

/* CONTACTS */

insert into contactPersons (first_name, last_name, email, phone, FK_acc) values ('Godiva', 'Rimell', 'grimell0@lesch.com', '314-595-0223',1);
insert into contactPersons (first_name, last_name, email, phone, FK_acc) values ('Hayes', 'Iozefovich', 'hiozefovich1@htm.com', '750-995-6804',2);
insert into contactPersons (first_name, last_name, email, phone, FK_acc) values ('Romain', 'Vakhrushin', 'rvakhrushin2@halvorson.com', '522-476-4329',3);
insert into contactPersons (first_name, last_name, email, phone, FK_acc) values ('Annecorinne', 'Keppel', 'akeppel3@frami-botsford.net', '789-379-4625',4);
insert into contactPersons (first_name, last_name, email, phone, FK_acc) values ('Orson', 'Petyakov', 'opetyakov4@hellerwelch.com', '401-413-6344',5);
insert into contactPersons (first_name, last_name, email, phone, FK_acc) values ('Anatola', 'Forbear', 'aforbear5@gls.com', '426-765-8237',6);
insert into contactPersons (first_name, last_name, email, phone, FK_acc) values ('Emmaline', 'Sivyour', 'esivyour6@zieme.com', '422-310-4873',7);
insert into contactPersons (first_name, last_name, email, phone, FK_acc) values ('Othello', 'Paaso', 'opaaso7@hane-koepp.de', '395-495-8394',8);
insert into contactPersons (first_name, last_name, email, phone, FK_acc) values ('Laverna', 'Goodhew', 'lgoodhew8@medhurstlang.com', '972-523-9963',9);
insert into contactPersons (first_name, last_name, email, phone, FK_acc) values ('Cheslie', 'Vaggers', 'cvaggers9@dbe-tech.com', '636-638-4784',10);
insert into contactPersons (first_name, last_name, email, phone, FK_acc) values ('Marna', 'Paice', 'mpaicea@cartwright.com', '303-307-8673',11);
insert into contactPersons (first_name, last_name, email, phone, FK_acc) values ('Stan', 'Fuggle', 'sfuggleb@boyle-klocko.com', '261-633-7563',12);

/* OPPORTUNITIES */


/* QUOTATIONS */


/* QUOTE LINE ITEMS */


/* SALESREP */

insert into salesPerson (first_name, last_name, phone, email, territory) values ('Andy', 'Bernard', '0207 120 2257', 'abernard@dundermifflin.com', 'SOUTH');
insert into salesPerson (first_name, last_name, phone, email, territory) values ('Jim', 'Halpert', '0207 120 2248', 'jhalpert@dundermifflin.com', 'EAST');
insert into salesPerson (first_name, last_name, phone, email, territory) values ('Tim', 'Canterbury', '0207 120 2253', 'tcanterb@dundermifflin.com', 'SOUTH');
insert into salesPerson (first_name, last_name, phone, email, territory) values ('Gareth', 'Keenan', '0207 120 2251', 'gakeenan@dundermifflin.com', 'NORTH');
insert into salesPerson (first_name, last_name, phone, email, territory) values ('Dwight', 'Shrute', '0207 120 2249', 'dschrute@dundermifflin.com', 'EAST');
insert into salesPerson (first_name, last_name, phone, email, territory) values ('David', 'Brent', '0207 120 2254', 'davbrent@dundermifflin.com', 'WEST');

