drop database if exists employeedb;
create database employeedb;

use employeedb;

create table employee(
    employeeId integer not null primary key,
    firstname varchar(20) not null,
    lastname varchar(30) not null,
    department varchar(15),
    salary decimal(6,2)
);

drop user if exists 'maria'@'localhost';
create user 'maria'@'localhost' identified by '1234';
grant all privileges on employeedb.* to 'maria'@'localhost';

insert into employee values(1,'Matt','River','ict',5000);
insert into employee values(2,'Mary','River','admin',6000);

insert into employee (employeeId,firstname,lastname)
values (3, 'Vera','Jones');

insert into employee (employeeId,firstname,lastname,department,salary)
values (4, 'Amanda','Jones','transportation',3000);

insert into employee (employeeId, firstname,lastname,salary)
values (5,'Arthur','Harris',2500);

insert into employee (employeeId,firstname,lastname,department)
values (6,'Vera', 'Smith','marketing');

insert into employee (employeeId,firstname,lastname,department,salary)
values (7, 'Mary Ann','Smith','ict',3500);

insert into employee (employeeId,firstname,lastname,department,salary)
values (8,'Mary-Ann','Wilkes','admin',7000);

insert into employee values (9, 'Luke', 'Walker', null, null);

insert into employee (department, lastname, employeeId, salary, firstname)
values ('ict', 'Brown', 10, 4000, 'Olivia');





