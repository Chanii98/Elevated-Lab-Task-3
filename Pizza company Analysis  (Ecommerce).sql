create database Pizza_Company;
use Pizza_Company;
 
select * from order_details;
select* from orders;
select * from pizza_types;
select * from pizzas;

-- Use of where, group by, order by

select * from order_details where order_details_id = 25;
select size from pizzas Group by size;
select * from pizzas order by price;
select * from pizzas order by price desc;
select * from pizzas order by price asc;

-- Joins 

select pizza_id from pizza_types pt
 join  pizzas p on pt.pizza_type_id = p.pizza_type_id;
 
 select * from pizza_types pt
 right join  pizzas p on pt.pizza_type_id = p.pizza_type_id;
 
  select * from pizza_types pt
 left join  pizzas p on pt.pizza_type_id = p.pizza_type_id;

 #Aggregate FUnctions
 select sum(price) from pizzas;
 
select sum(price) , pt.category from pizzas p
 left join  pizza_types pt on p.pizza_type_id = pt.pizza_type_id group by category;
  
  select avg(price) , pt.category from pizzas p
  right join  pizza_types pt on p.pizza_type_id = pt.pizza_type_id group by category;
  
  #subqueries
  
  select * from pizzas where price = (select max(price) from pizzas);
  select order_id from orders where order_id = (Select max(order_id) from orders);
  
  #Views
  
  create view Pizza_category_claasic AS
  select * from pizza_types where category = 'classic';
  
  select * from Pizza_category_claasic;
  
   select * from pizza_types where category = 'classic';
  
  
  
  

