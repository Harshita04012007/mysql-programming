create database class;
use class;
create table about(emp_id int,
name varchar(50),
department varchar(50),
salary int,
joining_year  int);

insert into about(emp_id,name,department,salary,joining_year)
value(101,"Alice","HR",60000,2020),
(102,"Bob","IT",75000,2018),
(103,"Charlie","Finance",50000,2021),
(104,"David","IT",80000,2015),
(105,"Eve","HR",45000,2022);

select *from about;
#1
 select emp_id,name,
if(salary>60000,salary*0.10,salary*0.5)as bonus
from about;
#2
select emp_id,name,
if(joining_year<2020,"experience","newcomers")as category
from about;
#3
select emp_id,name,
if(salary<70000,"average salary","high earn")as status 
from about
where department="IT";
#4
select emp_id,name,
if(salary>70000
and department="IT","not eligible","eligible")as promotion
from about;
#1 use case or when
select emp_id,name,
case
when salary<70000 then"high earn"
when salary=70000 then"average earn"
else "the salary is under 70000"
end as earning from about;
#5
select emp_id,name,
if(emp_id%2=0,"even","odd")as even_odd
from about;
#6
select emp_id,name,
if(joining_year%4=0,"leap year","not leap year")as year
from about;

