create database student;
use student;
create table student(
id int,
name varchar(50));
insert into student(id,name)values
(101,"adam");
insert into student (id,name)values
(102,"bob");
select*from student;
create database course;
use course;
create table course(
id int,
course varchar(20));
insert into course(id,course)values
(102,"eng");
insert into course(id,course)values
(103,"math");

insert into course(id,course)values
(104,"science");
insert into course(id,course)values
(107,"cs");
select*from course;

#inner join

select  student.student_id,name,course 
from student
inner join course
on student.student_id=course.student_id;

