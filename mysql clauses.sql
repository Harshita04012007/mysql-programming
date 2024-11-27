create database personal;
use personal;
create table personal(
id int not null unique,
name varchar(50)not null,
age int not null check (age>=18),
gender varchar(1) not null,
phone varchar(10) not null unique,
city varchar (15) not null default 'Agra');
insert into personal (id,name,age,gender,phone,city)
values(1,"ram",18,"M",401255,"agra");

insert into personal (id,name,age,gender,phone,city)
values(3,"radha",19,"F",401256,"agra");

select*from personal;
alter table personal
add email varchar(51);
alter table personal
modify email varchar(52)after name;
alter table personal
modify email int;
alter table personal
add unique(email);
alter table personal
change email email_id int;
alter table personal
drop column email_id;
alter table personal
rename personal2;

create table personality(
id int not null unique,
name varchar(51) not null,
age int not null check(age>=18),
gender varchar(51) not null,
phone varchar(51) not null,
city varchar(20) not null);

select*from personality;

insert into personality(id,name,age,gender,phone,city)
values(1,"ram",19,"m",4022155,"agra"),
(2,"rai",19,"m",4042155,"agra"),
(3,"radha",19,"f",4122155,"agra");

alter table personality
add email varchar(20);

alter table personality
modify email varchar(20)after name;

select id as emp_id,name as emp_name from personality;

select name from personality where gender="m";

select * from personality where age=21;

select * from personality where age>21;

select * from personality where age>=21;

select * from personality where city="agra";

select * from personality where city!="agra";

select * from personality where age>18 and age<21;

select * from personality where age>18 or age<21;

select * from personality where age=22 and city="agra";

select name from personality where city="agra" or city="bhopal";

select name from personality where city!="agra" or city="bhopal";

select name from personality where not (city="agra" or city="bhopal");

select name from personality where city="agra" and city="bhopal";

select * from personality where age in(18,19,20,21);

select * from personality where age in(18,21);

select * from personality where age=18 or age=19 or age=21;

select * from personality where age between 18 and 21;

select *from personality where age in(18,19,21);

select * from personality where id between 2 and 5;

select * from personality where name between "a" and "k";

select *from personality where name between "A" and "K";

select *from personality where not city in("delhi","bhopal");

set sql_safe_updates=0;

4002215

update personality
set phone=4022156 where id=1;

select * from personality;

delete from personality where id=1;

select * from personality;

delete from personality where age>20;

select * from personality;

truncate table personality;

select *from personality;

drop table personality;

 # like operator

create table personality(
id int not null unique,
name varchar(51) not null,
age int not null check(age>=18),
gender varchar(51) not null,
phone varchar(51) not null,
city varchar(20) not null);

select*from personality;


insert into personality(id,name,age,gender,phone,city)
values(1,"ram",19,"m",4022155,"agra"),
(2,"rai",19,"m",4042155,"agra"),
(3,"radha",19,"f",4122155,"agra");



select *from personality where name LIKE "S%";

select * from personality where name like "%r";

select * from personality where name like "%am%";

select * from personality where name like "%t";

delete from personality where id=1;

select * from personality;

truncate table personality;
select * from personality;
drop table personality;
create table personality1(
id int not null unique,
name varchar(51) not null,
age int not null check(age>=18),
gender varchar(51) not null,
phone varchar(51) not null,
city varchar(20) not null);

select*from personality1;


insert into personality1(id,name,age,gender,phone,city)
values(1,"ram",19,"m",4022155,"agra"),
(2,"rai",19,"m",4042155,"agra"),
(3,"radha",19,"f",41221   55,"agra");
(4,"RAJESH KUMAR",19,"M",4012221,"AGRA");


select*from personality1 where phone like "21%";

select*from personality1 where name like "_a%";

select * from personality1 where name like "__a%";

select * from personality1 where name like"___a";
select * from personality1 where name like"___a%";
 # REGEXP
select * from personality1 where name REGEXP 'ra';

select * from personality1 where name REGEXP '^RA';

select * from personality1 where name REGEXP 'AN$';


select * from personality1 where name REGEXP 'RAM|KAPOOR|KHAN';

select * from personality1 where name REGEXP '^RAM|KAPOOR|^KHAN';

select * from personality1 where name REGEXP '^RAM|KAPOOR|KHAN$';

select * from personality1 where name REGEXP '[IS]';

select * from personality1 where name REGEXP '[RM]';

select * from personality1 where name REGEXP '[RM]A';

select * from personality1 where name REGEXP '[RMH]A';

select * from personality1 where name REGEXP 'R[AM]';
 # ORDER   BY CLAUSE

select * from personality1 ORDER BY NAME;

SELECT *FROM PERSONALITY1 ORDER BY NAME ASC;

select * from personality1 ORDER BY NAME DESC;

select * from personality1 ORDER BY PHONE ASC;

select * from personality1 ORDER  BY CITY;

select * from personality1 ORDER  BY NAME, CITY;

select * from personality1 WHERE CITY="AGRA" ORDER BY NAME DESC;
insert into personality1(id,name,age,gender,phone,city)
values(4,"jakey",19,"m",4022155,"agra");
 
# distinct

select distinct city from personality1;

select distinct age from personality1;


select  * from personality1 order by age desc;

 select distinct age from personality1 where age<19 order by age desc;
 
 # limit

 select * from personality1 limit 3;
 
 select * from personality1 limit 4;
 
 select * from personality1 where city='agra' limit 2;
 
select * from personality1 where city='agra' limit 3;

select * from personality1 where city='agra' limit 2,2;

select * from personality1 where city='agra' limit 3,2;

select * from personality1 where city='agra' limit 0,3;

select * from personality1 where city='agra' limit 5,3;

select name,city from personality1 where city='agra' order by name limit 3;

aggregate function

select count(*) from personality1;

select count(name) from personality1;

select distinct count(city) from personality1;

select count( distinct city) from personality1;

select max(age) as maximum_age from personality1;


select min(age) as minimum_age from personality1;

select avg(age) as average_age from personality1;

select sum(age) as sum_age from personality1;

# arthimatic functions

select 5+6;

select 5*6 as total;

select 15/3;

select 15%3;

select 16%3;
 
 select id,name ,age+5 as "new_age" from personality1;

select pi();

select round(pi(),2);

select round (4.3);

select round(4.7);

select round(4.5);

select ceil(4.3);

select ceil(4.6);

select ceil(4.0);

select ceil(4.1);

select ceil(4.01);

select floor(4.1);

select floor(4.3);

select floor(4.6);

select floor(4.01);

select floor(4.1);

select pow(2,2);

select sqrt(64);

select sqrt(5),round(pi(),2);

select abs(-2);  

select abs(+2);

select abs(-2.25);

select abs(2.25);

select sign(-25);

select sign(25);

select sign(0);

select rand();

select rand();

select rand();

select rand()*100;
select rand()*100;
select rand()*100;

#string function

select id,upper(name),age from personality1;

select id,ucase(name),age from personality1;

select id,lower(name),age from personality1;

select id,lcase(name),age from personality1;

select id, name, character_length(name) as characters from personality1;

select id, name, char_length(name) as characters from personality1;

select id, name, length(name) as characters from personality1;

select id, concat(name, age) as name from personality1;

select id, concat(name, "  ",age) as name from personality1;# for add space

select id, concat(name, "-",age) as name from personality1;# for add -

select id, concat(name,"-")  from personality1;

select concat ("harshita","-","sharma") as name from personality1;

select concat_ws("-","harshita","sharma") as name from personality1;


select concat ("","harshita","sharma","hello","class") as name from personality1;

select "    harshita sharma       " as name;

select ltrim("   harshita sharma   ")as name;

select rtrim("	harshita sharma		") as name;

select trim("	harshita sharma		") as name;

select position("world" in "hello world") as position_no ;

select position("india" in "hello") as position_no ;

select position("o" in "hello world") as position_no ;

select position("l" in "hello world") as position_no ;

select instr("hello world","el") as position_no ;


select instr("hello world" ,"ell") as position_no ;


select locate("hello world","ell") as position_no ;

select locate("l","hello world",1) as position_no ;

select locate("l","hello world",3) as position_no ;

select locate("l","hello world",7) as position_no ;

#locate #instr#position difference
# LOCATE:
#INSTR:

select substring("harshita sharma",3);

select substring("harshita sharma",5);

select substring("harshita sharma",3,6);

select substring("harshita sharma",-6,3);

select mid("harshita sharma",-6,3);

select substring_index("www.neemajha.net",".",1);# we find . first

select substring_index("www.neemajha.net",".",2);# we find 2nd.

select substring_index("www.neemajha.net",".",3);#we find .3rd

select substring_index("www.neemajha.net","e",2);#we find 2nd 'e'

select substring_index("www.neemajha.net","e",3);#we find 3rd 'e'

select left("neema jha",3);

select right("neema jha",3);

select lpad("neema jha",20,"*");

select rpad("neema jha",20,"-");

select reverse("neema jha");

select replace("neema jha","jha","mam");

select replace("neema jha neema jha","jha","mam");

select strcmp("neema jha","harsh jha");

select strcmp("neema jha","neema");

select strcmp("neema","neema jha");#strcmp stands for string comparision.

#right is grater than so output is one.#left is big so then the output is -1

select field ("a","x","a","k"); #we find "a"in these"x","a","k"

select field("a","x","A","K");

select field(5,0,1,2,3,4,5,6);#we find 5in these0,1,2,3,4,5,6

select field("ram","Ram","mohan","Shyam");

select find_in_set("Ram","Ram,Mohan,Shyam");

select find_in_set("Mohan","Ram,Mohan,Shyam");

select hex("neema jha") as value;

##data function

select current_date();

select curdate();

select sysdate();

select now();

select date("2024-10-16 10:08:21");

select month("2024-10-16 10:08:21");

select monthname("2024-10-16 10:08:21");

select year("2024-10-16 10:08:21");

select quarter("2024-10-16 10:08:21");

select dayname("2024-10-16 10:08:21");

select dayofmonth("2024-10-16 10:08:21");

select dayofweek("2024-10-16 10:08:21");

select dayofyear("2024-10-14 10:08:21");

select week("2024-10-16 10:08:21");

select weekday("2024-10-16 10:08:21");

select yearweek("2024-10-16 10:08:21");

select last_day("2024-10-16 10:08:21");

select extract( month from "2024-10-16 10:08:21");

select adddate("2024-10-16",interval 10 day );

select adddate("2024-10-16",interval 1 month );

select adddate("2024-10-16",interval 24 hour );

select date_add("2024-10-16", interval 5000 minute);

select makedate(2024,16 );

select subdate("2024-10-16",interval 1 day );

##time function

select current_time();

select curtime();

select current_timestamp();

select localtime();

select localtimestamp();

select time("2024-10-16 10:08:21");

select hour("2024-10-16 10:08:21");

select timediff("13:10:45","10:08:21");

#17 oct
 














