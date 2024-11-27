create database college;
use college;
create table college(
name varchar(50),
gender varchar(50),
age int,
dob date);
select*from college;
drop database college2;

alter table college
add email varchar (20);

alter table college
modify email varchar(20) after name;

alter table college
modify email int;

alter table college
add unique (email);

alter table college
change email email_id int;

alter table college
drop column email_id;

alter table college
rename college2;












