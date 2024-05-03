-- Creating a new database

create database customerdb;

-- Using the database
use customerdb;

-- Creating a table in the database
create table customer (
    customerId integer not null primary key,
    firstname varchar(11) not null, 
    lastname varchar(6) not null,
    address varchar(12) not null, 
    customerclass varchar(28) not null
);

-- Inserting data in customer table
insert into customer (customerId, firstname, lastname, address, customerclass) values(1001, 'Johnson', 'Jones', 'London 88', 'PlatinumCustomer');

insert into customer (customerId, firstname, lastname, address, customerclass) values(1002, 'Elias', 'Hagos', 'Helsinki 88', 'PremiumCustomer');

select * from customer;

-- Granting access to lucas to access customerdb

drop user if exists 'lucas'@'localhost';
create user 'lucas'@'localhost' identified by 'unfGIN2Q';
grant all privileges on customerdb.* to 'lucas'@'localhost';

exit;

-- Login by lucas
mysql -u lucas -p;

-- chcek database
show databases;

-- Starting using the database
use customerdb;

-- lucas inserting data into the table
insert into customer (customerId, firstname, lastname, address, customerclass) values(2001, 'Lukas', 'Jane', 'Madrid 14', 'OrdinaryCustomer');

insert into customer (customerId, firstname, lastname, address, customerclass) values(2002, 'Laurea', 'Heidi', 'Koulukatu 20', 'ReturnCustomer');

insert into customer (customerId, firstname, lastname, address, customerclass) values(2003, 'Biola', 'Adam', 'Morgan 44', 'SolidGold');

insert into customer (customerId, firstname, lastname, address, customerclass) values(2004, 'Lucky', 'Felix', 'Dakar 90', 'SilverCustomer');

-- lucas updating the table
update customer set address = 'Vantaa 13' where customerId = 1002;
select * from customer;

-- lucas deleting row from table
delete from customer where customerId = 2004;
select * from customer;

exit;
