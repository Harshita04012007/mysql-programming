create database college;
create database college2;
use college;
create table student(
id int,
name varchar(50),
age int);
create table employee(
name varchar(50),
dob date,
age int,
gender varchar(10));
select*from employee;

insert into employee(name,dob,age,gender)values
("ram","1990-09-12",34,"male");

insert into employee (name,dob,age,gender)values
("rahul","1990-09-12",34,"male"),
("aryan","1990-09-12