mysql -u root -p;

show databases;
drop database if exists persondb;
create database persondb;

show databases;

use persondb;

/* Creating a table */
create table person(
    id integer not null primary key,
    firstname varchar(20) not null,
    lastname varchar(30) not null,
    age integer
);

show tables;

select * from person;

create table book(
    bookId integer not null primary key,
    bookName varchar(50) not null,
    price integer not null
);

describe book;
describe person;

drop table book;
show tables;


insert into person (id, firstname, lastname, age)
values (1,'Matt','River',20);

select * from person;
select firstname from person;

insert into person (id, age, lastname, firstname)
values (2,25,'River','Mary');

## This is not a good approach
insert into person values(3, 'Matt', 'Jones', 30);

insert into person (id, firstname, lastname)
values (4, 'Vera', 'Smith');

insert into person values (5, 'Author', 'Harris', null);

select * from person;
select database();
select @@port;
select @@hostname;

select lastname, firstname from person;
select lastname, firstname from person where lastname='River';
select lastname from person;

/* Using DISTINCT keyword:*/
select DISTINCT lastname from person;
select DISTINCT lastname from person order by lastname asc;
select DISTINCT lastname from person order by lastname desc;


select lastname, firstname from person order by lastname asc, firstname asc;
select lastname, firstname from person order by lastname, firstname;
select lastname, firstname from person order by lastname desc, firstname asc;
select lastname, age from person order by lastname asc;

select firstname, age from person
where age is not null
order by lastname asc;

select id from person where age is null;

update person set age = 10 where id = 5;
update person set age = 50 where lastname = 'Harris';
update person set age = 15 where id = 4;

select firstname, age from person where age < 25;
select firstname, age from person where age > 20 and age < 50;
select firstname, age from person where age >= 20 and age < 50;
select * from person;


/* My Data*/
/* CREATE DATABASE */
create database mycountries;

/* CREATE TABLE*/
create table countries(id integer not null AUTO_INCREMENT primary key, country varchar(255), capital varchar(255), postcode varchar(10) not null, continent varchar(255) not null, population integer(255));


/* INSERT INTO TABLE*/
insert into countries(id, country, capital, postcode, continent, population) values(id, 'Nigeria', 'Abuja', '+234', 'Africa',  220000000);

insert into countries(id, country, capital, postcode, continent, population) values(id, 'Ghana', 'Accra', '+233', 'Africa',  40000000);

insert into countries(id, country, capital, postcode, continent, population) values(id, 'United Kingdom', 'London', '+44', 'Europe', 68000000);

insert into countries(id, country, capital, postcode, continent, population) values(id, 'France', 'Paris', '+357', 'Europe', 65000000);

insert into countries(id, country, capital, postcode, continent, population) values(id, 'USA', 'Washington DC', '+1', 'North America', 300000000);

insert into countries(id, country, capital, postcode, continent, population) values(id, 'Australia', 'Sydney', '+900', 'Oceanic', 42000000);

insert into countries(id, country, capital, postcode, continent, population) values(id, 'Brazil', 'Brasilia', '+22', 'South America', 258000000);

insert into countries(id, country, capital, postcode, continent, population) values(id, 'Canada', 'Ontario', '+91', 'North America', 30000000);

insert into countries(id, country, capital, postcode, continent, population) values(id, 'Ethopia', 'Addis Ababa', '+285', 'Africa', 100000000);

insert into countries(id, country, capital, postcode, continent, population) values(id, 'New Zealand', 'Abuja', '+234', 'Oceanic',  10000000);

insert into countries(id, country, capital, postcode, continent, population) values(id, 'New Papua Guinea', 'Unknown', '+234', 'Oceanic',  220000000);


/* UPDATE*/
update countries set population=20000000 where id=4;
/* DELETE*/
delete from countries where id=11;