create database sale;

use sale;

create table sale(
sale_id int not null,
product_id  int not null,
customer_id varchar(10),
sale_date date,
quantity int not null,
unit_price int not null,
region varchar(50));
select *from sale;

insert into sale(sale_id,product_id,customer_id,sale_date,quantity,unit_price ,region)
values(1,101,"1001","2024-01-05",5,200,"north");
select*from sale;
insert into sale(sale_id,product_id,customer_id,sale_date,quantity,unit_price ,region)
values(2,102,"1002","2024-01-10",10,150,"east");

insert into sale(sale_id,product_id,customer_id,sale_date,quantity,unit_price ,region)
values(3,103,"1003","2024-02-15",2,300,"north");

insert into sale(sale_id,product_id,customer_id,sale_date,quantity,unit_price ,region)
values(4,101,"1004","2024-02-20",7,250,"west");

insert into sale(sale_id,product_id,customer_id,sale_date,quantity,unit_price ,region)
values(5,101,"1004","2024-03-05",1,200,"east");
select*from sale;
#1. Write a query to calculate the total sales(Quantity*unitprice) for each product.
 select product_id,sum(quantity*unit_price)as "total_sale" from sale group by product_id;
#2 Write a query to find the total number of product sold in each region.

select region,count(sale_id)as "total no. of product sold"from sale group by region;

#3. Write a query to get the average sales amount per product.
select product_id,avg(Quantity*unit_price)as"average sale amount"from sale group by product_id;

#4. Find the regions where total sales are more than 3000.
select region,sum(quantity*unit_price)as"total sale"from sale group by region having sum(quantity*unit_price)>3000;
#5. Write a query to get the maximum quantity sold for each product.
select product_id,max(quantity)as"maximum quantity sold"from sale group by product_id;
#6. Write a query to calculate the average quantity of products sold per region.
select region,avg(quantity)as"average quantity of product sold"from sale group by region;
#7.Find the product IDs that have generated a total sales amount of more than 1000.
select product_id,sum(quantity*unit_price)as"total sale amount " from sale group by product_id having sum(quantity*unit_price)>1000;
#8. Write a query to get the total number of sales (rows) made for each customer.
select customer_id ,count(quantity)as"total number of sales"from sale group by customer_id;
#9.Find the products for which the average quantity sold is less than 5.
select product_id,avg(quantity)as"average sold "from sale group by product_id having avg(quantity)<5;
#10.Write a query to find the sum of total sales for each customer in each region.
select customer_id,region,sum(quantity*unit_price)as"total sale "from sale group by customer_id,region;
#11.Write a query to calculate the total sales for each month.
select sale_date,sum(quantity*unit_price)as"total sales"from sale group by sale_date;
#12.Write a query to calculate the total sales for each month.
select region,avg(unit_price)as" average unit_prie"from sale group by region having avg(unit_price)>200;
#13.Write a query to get the maximum and minimum quantity sold per region.
select region,max(quantity),min(quantity) from sale group by region;
#14.Find the customers who have made more than 2 purchases.
select customer_id, count(product_id) from sale group by customer_id having count(product_id)>1;

#15.Write a query to find the total sales for each product and filter only those products where the total sales exceed 1500.
select product_id,sum(quantity*unit_price)as"total sale"from sale group by product_id having sum(quantity*unit_price)>1500;