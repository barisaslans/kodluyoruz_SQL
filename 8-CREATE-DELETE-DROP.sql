--test veritabanınızda employee isimli sütun bilgileri id(INTEGER), 
--name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.

CRETAE TABLE employee(
    id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    birthday DATE,
    email VARCHAR(50)
);

--Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.

insert into employee  (id, name, birthdate, email) values (1, 'Goddart', '2021-02-26', 'gconan0@constantcontact.com');
insert into employee  (id, name, birthdate, email) values (2, 'Clevey', '2006-07-26', 'cfulleylove1@reddit.com');
insert into employee  (id, name, birthdate, email) values (3, 'Nelli', '1990-09-07', 'nallman2@sitemeter.com');
insert into employee  (id, name, birthdate, email) values (4, 'Reilly', '2000-11-05', 'rbagg3@tripadvisor.com');
insert into employee  (id, name, birthdate, email) values (5, 'Jacobo', '2005-02-16', 'jkidner4@hibu.com');
insert into employee  (id, name, birthdate, email) values (6, 'Mellicent', '2012-03-07', 'mpooly5@pcworld.com');
insert into employee  (id, name, birthdate, email) values (7, 'Jesus', '2004-02-14', 'jbennington6@stanford.edu');
insert into employee  (id, name, birthdate, email) values (8, 'Marita', '2021-12-26', 'mmcgrann7@samsung.com');
insert into employee  (id, name, birthdate, email) values (9, 'Eugenie', '2021-07-16', 'emcdonogh8@ed.gov');
insert into employee  (id, name, birthdate, email) values (10, 'Alanah', '2011-05-31', 'ajeannaud9@pinterest.com');

--Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee
SET name = 'Ahmet Vefa'
WHERE email ='cjewelll@home.pl'
RETURNING*;

UPDATE employee
SET email = 'bkubickak@jimdo.com'
WHERE id = 4
RETURNING*;

UPDATE employee
SET birtday = '1975-03-10'
WHERE name = 'Judas'
RETURNING*;

UPDATE employee
SET name= 'Spagetti'
WHERE name LIKE 'Z%'
RETURNING*;

UPDATE employee
SET name= 'ABS'
WHERE name LIKE 'O%'
RETURNING*;

--Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee
WHERE name ='Jacobo'
RETURNING*;

DELETE FROM employee
WHERE id=4
RETURNING*;

DELETE FROM employee
WHERE email = 'gconan0@constantcontact.com'
RETURNING*;

DELETE FROM employee
WHERE id=7
RETURNING*;

DELETE FROM employee
WHERE birtday ='2011-05-31'
RETURNING*;

