create database win;
use win;
create table emp(
new_id int not null,
new_cat varchar(50));
insert into emp(new_id,new_cat)
values
(100,"Agni"),
(200,"Agni"),
(500,"Dharti"),
(700,"Dharti"),
(200,"vayu"),
(300,"vayu"),
(500,"vayu");
select * from emp;
select new_id,new_cat,sum(new_id)over(partition by new_cat order by new_id)as"Total" from emp;

select new_id,new_cat,sum(new_id)over(partition by new_cat)as"Total" from emp;

select new_id,new_cat,sum(new_id)over (partition by new_cat order by new_id)as "Total",avg(new_id)over (partition by new_cat)as "Average" from emp;

select new_id,new_cat,sum(new_id)over(partition by new_cat)as"Total",avg(new_id)over(partition  by new_cat)as"Average" from emp;

select new_id,new_cat,
sum(new_id)over(partition by new_cat order by new_id) as "Total",
avg(new_id)over(partition by new_cat order by new_id) as "Average",

count(new_id)over(partition by new_cat order by new_id) as "Count",
min(new_id)over(partition by new_cat order by new_id) as "Min",
max(new_id)over(partition by new_cat order by new_id) as "Max" from emp;

select new_id,new_cat,
sum(new_id)over(partition by new_cat) as "Total",
avg(new_id)over(partition by new_cat) as "Average",
count(new_id)over(partition by new_cat) as "Count",
min(new_id)over(partition by new_cat) as "Min",
max(new_id)over(partition by new_cat) as "Max" from emp;

select new_id,new_cat,
sum(new_id)over(partition by new_cat order by new_id desc) as "Total",
avg(new_id)over(partition by new_cat order by new_id desc) as "Average",
count(new_id)over(partition by new_cat order by new_id desc) as "Count",
min(new_id)over(partition by new_cat order by new_id desc) as "Min",
max(new_id)over(partition by new_cat order by new_id desc) as "Max" from emp;

#ranking function
select new_id,
row_number()over(order by new_id)as"row_number" from emp;

select new_id,
row_number()over(order by new_id) as"row number",
rank() over(order by new_id)as "rank" from emp;


select new_id,
row_number() over(order by new_id) as"row_number",
rank() over(order by new_id)as "rank",
dense_rank() over(order by new_id)as"dense_rank",
percent_rank() over(order by new_id) as"percent_rank" from emp;

#analtic function

select new_id,
first_value(new_id) over(order by new_id) as "first_value"from emp;

select new_id,
first_value(new_id) over(order by new_id) as "first_value",
last_value(new_id) over(order by new_id)as "last_value" from emp;

select new_id,
first_value(new_id) over(partition by new_cat order by new_id) as "first_value",
last_value(new_id) over(partition by new_cat  order by new_id)as "last_value" from emp;

select new_id,
first_value(new_id) over(order by new_id) as "first_value",
last_value(new_id) over(order by new_id)as "last_value" ,
lead(new_id)over(order by new_id)as "lead",#next value
lag(new_id)over(order by new_id) as"lag"#before value
from emp;



