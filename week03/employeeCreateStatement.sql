drop database if exists employeesdb;
create database employeesdb;

use employeesdb;

create table employees(
    employeeId integer not null primary key,
    firstname varchar(20) not null,
    lastname varchar(30) not null,
    department varchar(15),
    salary decimal(6, 2)
);

drop user if exists 'maria'@'localhost';
create user 'maria'@'localhost' identified by '1234';
grant all privileges on employeesdb.* to 'maria'@'localhost';

mysql -u maria -p

insert into employees values(1, 'Matt', 'River', 'ICT', 5000);
insert into employees values(2, 'Mary', 'River', 'ADMIN', 6000);
insert into employees(employeeid, firstname, lastname) values(3, 'Vera', 'Jones');



exit;






