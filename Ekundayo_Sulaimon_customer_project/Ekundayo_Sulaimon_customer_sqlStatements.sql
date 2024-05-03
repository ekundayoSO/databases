-- Login as a root user
mysql -u root -p;

-- Check for database
show databases;

-- Use database
use customerdb;

-- Inserting data into table
insert into customer (customerId, firstname, lastname, address, customerclass) values(3000, 'Sophie', 'Lake', 'Codepath 2', 'TobeAwarded');

insert into customer (customerId, firstname, lastname, address, customerclass) values(6543, 'Olivia', 'Hammer', 'Bugpath 42', 'OrdinaryPenPusher');

insert into customer (customerId, firstname, lastname, address, customerclass) values(5000, 'Abel', 'River', 'Street 20', 'VIP');

insert into customer (customerId, firstname, lastname, address, customerclass) values(2000, 'Layla', 'Garcia', 'Dataway 35', 'KeyCustomer');

insert into customer (customerId, firstname, lastname, address, customerclass) values(7987, 'Jeff', 'Smith', 'Cloudhill', 'R.I.P');

insert into customer (customerId, firstname, lastname, address, customerclass) values(1000, 'Paula', 'Irony', 'Station 5', 'SolidGold');

insert into customer (customerId, firstname, lastname, address, customerclass) values(4123, 'Matt', 'Bell', 'River side 2', 'SuperBonus');

-- Getting data
select * from customer;
select customerId, address, firstname from customer;
select * from customer where address = 'Dataway 35' or address = 'River side 2';
select * from customer where lastname = 'Lake';

-- Updating data
update customer set lastname = 'Garcia', firstname = 'Olivia' WHERE customerId = 4123;

update customer set address = 'Street 20', customerclass = 'ToBeAwarded' where customerId = 1000;

update customer set lastname = 'Hammer', address = 'River side 2', customerclass = 'ToBeAwarded' where customerId = 6543;

update customer set customerclass = 'OrdinaryPenPusher', lastname = 'Hammer', address = 'River side 2' where customerId = 5000;

select * from customer;

-- Delete data
delete from customer where customerId = 5000;
delete from customer where customerId = 4123;
delete from customer where customerclass = 'SuperBonus';
delete from customer where customerclass = 'ToBeAwarded' or firstname = 'Sophie';
delete from customer where
customerclass = 'SuperBonus' and
address = 'Station 5' and
firstname = 'Olivia';

select * from customer;

exit;

