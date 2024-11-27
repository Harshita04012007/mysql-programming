#1.	Create a database named library and a table named books with the following columns:
•	Id (INT,Primary key,Auto increment)
•	title (VARCHAR(255))
•	author(VARCHAR(100))
•	year(year)
•	genre(VARCHAR(100))

create database library;
use library;
create table books(id int not null unique auto_increment,
title varchar(100),
author varchar(100),
year year,
genre varchar(100));
#/2.	Insert the following book records into the books table:
#•	"The Great Gatsby","F. Scott Fitzgerald",1925, "Fiction"
#•	"to kill a mockingbird",harper lee",1960, "fiction"
##•	"Moby Dick","Herman Melville",1851, "Adventure"*/

insert into books(title,author,year,genre)
values("The Great Gatsby","F.Scott Fitzgerald",1925,"Fiction"),
("pride and prejudice","Jane Austen",1913,"romance"),
("to kill a mockingbird","harper lee",1960,"Fiction"),
("1984","George Orwell",1949,"Dystopian"),
("Moby Dick","Herman Melville",1951,"Adventure");

#3 .Write a query to select all books where the title starts with the letter 'T' using the LIKE operator.
select * from books where title LIKE'T%';
select *from books;
#4. Write a query to find all books where the author’s last name ends with 'son' using the LIKE operator.
select * from books where author LIKE'%son';
#5. Write a query to find all books where the title contains the word 'and' using the LIKE operator
Select * from books where title LIKE '%and%';
#6. Write a query to retrieve all books where the title ends with the word 'bird' using the LIKE operator.
select *  from books where title LIKE '%bird';
#7. Write a query to find all books where the title has exactly 3 characters using the REGEXP operator.
select *from books where title REGEXP'^.(3)$';
#8. Write a query to select all books where the title contains a number using the REGEXP operator.

select * from books where title REGEXP '[0-9]';
#9. Write a query to retrieve all books where the author’s name starts with any letter between 'A' and 'J' using the REGEXP operator.
select * from books where author REGEXP'^[A-Ja-j]';
#10. Write a query to select all books where the genre is either 'fiction' or 'Adventure' using the REGEXP operator.
select * from books where genre REGEXP'^(Fiction|Adventure)$';
#11.Write a query to find all books where the title contains at least one uppercase letter using the REGEXP operator.

select*from books where title REGEXP'[A-Z]';
#12. Write a query to find all books where the year of publication is between 1800 and 1950 using the LIKE operator.
select * from books where year LIKE '18%'OR year LIKE'1950%';
#13. Write a query to retrieve all books where the author’s name contains exactly two words using the REGEXP operator.
select *from books where author REGEXP'^[A-Z-z]+[A-Z-z]+$';
#14. Write a query to find all books where the title starts with the letter 'P' and contains exactly two words using the REGEXP operator.
select * from books where title REGEXP'[A-Za-z0-9]';
#15. Write a query to find all books where the title contains any special characters (e.g., '! ', '@', '#', etc.) using the REGEXP operator.
select * from books where title REGEXP'[[:punct:]]';