-- Creating a new database
drop database if exists mopeddb;
create database mopeddb;
show databases;
use mopeddb;
-- Creating table in the mopeddb
create table moped (
    mopedId integer(10) not null primary key,
    name varchar(12) not null,
    itemsInStock integer not null,
    topspeed integer not null,
    modelYear integer not null
);
show tables;
-- Inserting data into moped
insert into moped (mopedId, name, itemsInStock, topspeed, modelYear)
values(8, 'Dandy 22', 500, 200, 2023);
insert into moped (mopedId, name, itemsInStock, topspeed, modelYear)
values(9, 'Foxes 11', 125, 350, 2024);
select * from moped;
-- Granting access to benjamin to specific database - mopeddb
drop user if exists 'benjamin' @'localhost';
create user 'benjamin' @'localhost' identified by 'gzOI9gEA';
grant all privileges on mopeddb.* to 'benjamin' @'localhost';
exit;
-- Login to database by benjamin
mysql -u benjamin -p;
show databases;
use mopeddb;
-- Insert data
insert into moped (mopedId, name, itemsInStock, topspeed, modelYear)
values(10, 'X Factor 11', 25, 12, 2024);
insert into moped (mopedId, name, itemsInStock, topspeed, modelYear)
values(10, 'Game 02', 75, 25, 2021);
select * from moped;
-- Updating data
update moped set topspeed = 55 where mopedId = 10;
-- Deleting data
delete from moped where name = 'Game 02';
exit;