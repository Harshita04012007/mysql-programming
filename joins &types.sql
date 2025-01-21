create database pre;
use pre;
create table employees1(
emp_id int,
emp_name varchar(50),
department_id int);
insert into employees1(emp_id,emp_name,department_id)
values(1,"Alice",10),
(2,"Bob",20),
(3,"Charlie",30),
(4,"David",10),
(5,"Eve",40);
select*from employees1;
create table departments(
department_id int,
department_name varchar(50));
insert into departments(department_id,department_name)
values(10,"HR"),
(20,"Finance"),
(30,"IT"),
(40,"Admin"),
(50,"Marketing");
select*from departments;
create table projects(
project_id int,
emp_id int,
project_name varchar(50));
select*from projects;
insert into projects(project_id,emp_id,project_name)
values(101,1,"Alpha"),
(102,2,"Beta"),
(103,3,"Gamma"),
(104,4,"Delta");
#1
select employees1.emp_id,emp_name,departments.department_id,department_name
from employees1
right join departments
on employees1.department_id=departments.department_id
order by emp_id asc;
#2
select employees1.emp_name,departments.department_name
from employees1
left join departments
on employees1.department_id=departments.department_id;
#3
select departments.department_id,departments.department_name,employees1.emp_id,employees1.emp_name
from departments
left join employees1
on departments.department_id=employees1.department_id;
#4
select employees1.emp_id,employees1.emp_name,departments.department_name
from employees1
right join departments
on employees1.department_id=departments.department_id;
#5
select employees1.emp_id,emp_name,departments.department_id,department_name,projects.project_id,project_name
from employees1
right join departments
on departments.department_id=employees1.department_id
left join projects
on projects.emp_id=employees1.emp_id;
#6
select employees1.emp_name from employees1
left join projects
on employees1.emp_id=projects.emp_id
where projects.project_id is null;
#7
select departments.department_name,employees1.emp_name from employees1
right join departments
on departments.department_id=employees1.department_id
where employees1.emp_id is null;
#8
select employees1.emp_name as"employees details",departments.department_name as "departments details"
from  employees1
right join departments
on employees1.department_id=departments.department_id;
#9 
select employees1.emp_name from employees1
where department_id=department_id;
