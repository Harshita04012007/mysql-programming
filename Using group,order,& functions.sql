Create database Assignment;
use Assignment;
create table Assignment(
emp_id int not null,
first_name varchar(50),
last_name varchar(50),
department varchar(20),
salary int not null,
hire_date date);
insert into Assignment(
emp_id,first_name,last_name,department,salary,hire_data)
values(1,"John","Doe","IT",60000,"2019-01-10"),
(2,"Jane","Smith","HR",55000,"2018-03-05"),
(3,"Emily","Jones","IT",62000,"2020-07-23"),
(4,"Michael","Brown","Finance",70000,"2016-05-14"),
(5,"Sarah","Davis","Finance",69000,"2017-11-18"),
(6,"David","Johnson","HR",48000,"2021-09-10");
select *from assignment
#1.	Find the average salary of employees in each department
select department,avg(salary)as"average salary of employee" 
from Assignment
group by department;
#2.Find the total number of employees hired after 2019.
 select count(hire_data)as"employees hired after 2019" from Assignment where hire_data>"2019-01-10";
 #3.List the departments and the total salary of all employees in each department, ordered by the total salary.

 select department,sum(salary)as"total salary of all employees in the department" from Assignment group by department order by sum(salary);
 #4.Find the highest salary in the finance department.
 Select department max(salary)as highest_salary from Assignment where department ="FINANCE";

#5.Get the top  3 highest-paid employees.
select first_name,last_name,max(salary)as"top 3 highest-paid employees"from Assignment group by first_name,last_name order by max(salary) desc limit 3;
#6. Find the department with the minimum average salary.
select department,avg(salary)as"Average salary  of employee"from Assignment group by department order by avg(salary) asc limit 1;
#7. Display the total number of employees in each department, ordered by the number of employees.
select department,count(emp_id)as"total number of employees" from Assignment group by department order by count(emp_id);
#8.Find the average salary of employees who were hired before 2020.
select hire_data,avg(salary)as"salary" from Assignment group by hire_data having hire_data<"2020-07-23";
#9.List the names of employees in the IT department ordered by hire date,with the most recently hired employees first.
select first_name,last_name,max(hire_data)as"employees in the IT department " from Assignment where department="IT" group by first_name,last_name order by max(hire_data)desc;
#10.Find the sum of salaries for all employees hired after January 1,2019,ordered by salary.
select sum(salary)as"sum_of_salary"from Assignment where hire_data>"2019-01-10" order by salary;
#11.Get the employee with the lowest salary in the HR department.
select department,min(salary) as"lower salary"from Assignment where department="HR";
#12.Find the total salary paid to employees in each department, but limit the result to the top 2 highest-paying department.
select department,sum(salary)as"total salary of all employees in the department" from Assignment group by department order by sum(salary)desc limit 2;
#13.List all employees hired after 2018, ordered by salary, and show only the first 4 employees
select first_name,last_name  from Assignment where hire_data>"2018-03-05"order by salary limit 4;
#14.Find the highest salary in the IT department, but limit the results to the top 1 result.
select department,max(salary)as"highest salary" from Assignment where department="IT";
#15.Get the average salary of employees in each department and list only departments with an average salary greater than $60,000.
select department,avg(salary)as"average salary of employee" from Assignment group by department having avg(salary)>60000;