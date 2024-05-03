use mopeddb;

-- Inserting data into database table
insert into moped (mopedId, name, itemsInStock, topspeed, modelYear) values(2, 'MotorX 2000', 70, 15, 2005);

insert into moped (mopedId, name, itemsInStock, topspeed, modelYear) values(4, 'MaxNoise 120', 130, 20, 2012);

insert into moped (mopedId, name, itemsInStock, topspeed, modelYear) values(1, 'Xross 3', 50, 10, 2017);

insert into moped (mopedId, name, itemsInStock, topspeed, modelYear) values(6, 'Daddy 1', 30, 5, 1995);

insert into moped (mopedId, name, itemsInStock, topspeed, modelYear) values(3, 'Grampa', 150, 25, 2011);

insert into moped (mopedId, name, itemsInStock, topspeed, modelYear) values(7, 'Mummy 10', 350, 40, 2015);

insert into moped (mopedId, name, itemsInStock, topspeed, modelYear) values(5, 'Skooter 95', 100, 30, 2010);

select * from moped;

-- Getting data from database mopeddb table moped
select mopedId, itemsInStock, modelYear from moped;
select * from moped where name = 'Mummy 10'; 
select * from moped where name = 'Daddy 1'; 
select * from moped where topspeed = 10; 

-- Updating data in moped
update moped SET topspeed = 20, modelYear = 2000 where mopedId=2;
update moped SET itemsInStock = 350, name = 'Skooter 95' where mopedId=4;
update moped SET name = 'Daddy 1', itemsInStock = 30 where mopedId=5;
update moped SET topspeed = 30, name = 'MotoX 2000', itemsInStock = 30 where mopedId=2;
select * from moped;

-- Inserting more data to moped
insert into moped (mopedId, name, itemsInStock, topspeed, modelYear) values(mopedId, 'Yankee 88', 33, 28, 2014);

insert into moped (mopedId, name, itemsInStock, topspeed, modelYear) values(mopedId, 'Yankee 88', 33, 28, 2014);

insert into moped (mopedId, name, itemsInStock, topspeed, modelYear) values(mopedId, 'Xuzo 8', 14, 9, 2017);

insert into moped (mopedId, name, itemsInStock, topspeed, modelYear) values(mopedId, 'YamL 01', 17, 22, 2001);
select * from moped;

-- Deleting rows of data from moped
delete from moped where mopedId = 3;
delete from moped where mopedId = 7;
delete from moped where modelYear = 2011;
delete from moped where topspeed = 5 and modelYear = 2010;
delete from moped where itemsInStock in (30, 50, 70);
select * from moped;

exit;


