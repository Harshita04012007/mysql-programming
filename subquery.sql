create  database harshita;
use college;
create table employees1(
emp_id int,
name varchar(50),dept_id int,
salary int, age int,city varchar(50));

insert into employees1(emp_id,name,dept_id,salary,age,city)
values(1,"alice",101,6000,28,"New york"),
(2,"bob",102,7000,35,"Chicago"),
(3,"charlie",103,8000,38,"los"),
(4,"david",101,7500,25,"Newyork"),
(5,"eve",102,8500,45,"san diego");
select * from employees1;
create table departmentss(
dept_id int,
dept_name varchar(50));
insert into departmentss(dept_id,dept_name)
values(101,"hr"),
(102,"sales"),
(103,"it"),
(104,"finance");

select * from departmentss;
select max(salary) as highest_salary from employees1;
select name from employees1 where city=(select city from employees1 where name="alice");
#3 list of all employees who earn more than the average salary of the employee
select name,salary from employees1 where salary>(select avg(salary)from employees1);
#4 retrive names of employee whose age is  below the average age
select name,age from employees1 where age <(select avg(age) from employees1);
#5 get the name of the department with lowest paid
select dept_name 
from departmentss 
where dept_id= (select dept_id from employees1
 where salary= (select min(salary)from employees1));
 #6 find all employees who belong to aa department where the salary  is more than 50000.
 select name from employees1
 where dept_id in(select dept_id from employees1 group by dept_id having avg(salary)>50000);
 #7 list name o f employees who earn the minimum salary in their respective departments.
 select name from employees1 where dept_id =(select dept_id from employees1 where salary=(select min(salary)from employees1))limit 1;
 #8 find the employees who are older than the average age of employees in their department.
select name from employees1 where dept_id in (select dept_id from employees1 having age>(select avg(age)from employees1));
#9 get the name of employees who earn maximum salary in each department
select name from employees1 where dept_id =(select dept_id from employees1 where salary=(select max(salary)from employees1));
#10 find the  names of employees who earn less than bob.
select name from employees1
where salary<(select salary from employees1 where name='bob');
