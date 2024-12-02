create database sales_analysis;
DROP TABLE IF EXISTS retail_sales;
CREATE TABLE retail_sales
            (
                transaction_id INT PRIMARY KEY,	
                sale_date DATE,	 
                sale_time TIME,	
                customer_id	INT,
                gender	VARCHAR(15),
                age	INT default 0,
                category VARCHAR(25),	
                quantity INT ,
                price_per_unit FLOAT,	
                cogs FLOAT,
                total_sale FLOAT
            );
/* DATA CLEANING AND DATA EXPLORATION */
 select * from retail_sales; 
 
 select count(*) 
 from retail_sales;
 
 select *
 from retail_sales
 where
       
       sale_date is null
       or 
       sale_time is null
       or
       gender is null
       or
       category is null
       or
       quantity is null
       or
       price_per_unit is null
       or
       cogs is null
       or
       total_sale is null; 
       
 delete
 from retail_sales
 where
       
       sale_date is null
       or 
       sale_time is null
       or
       gender is null
       or
       category is null
       or
       quantity is null
       or
       price_per_unit is null
       or
       cogs is null
       or
       total_sale is null; 
	
select count( distinct category) as category_count
from retail_sales;   

select count(distinct customer_id) as id_count
from retail_sales;

select count(sale_date)
from retail_sales
where sale_date like '2022-%';

select count(sale_date)
from retail_sales
where sale_date like '2023-%' ;

-- Data Analysis and Business Key Problems
-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05'
select * 
from retail_sales
where sale_date= '2022-11-05';
-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022
select *
from retail_sales
where sale_date like '2022-11-%'
  and  category="Clothing" 
  and quantity >= 4;
-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
select category,
       sum(total_sale) as sale_by_category,
       count(*) as total_orders
from retail_sales
group by category
order by sale_by_category desc;
-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
select category,
       floor(avg(age)) as average_age
from retail_sales
where category="beauty";
-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
select category,customer_id,age,quantity,total_sale
from retail_sales
where total_sale > 1000;
-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
select gender,category,count(transaction_id) as no_of_transactions
from retail_sales
group by gender,category
order by no_of_transactions desc;
-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
with cte1 as 
(
select year(sale_date) as sale_year,month(sale_date) as sale_month,round(avg(total_sale),2) as avg_sale
from retail_sales
group by sale_year,sale_month
order by sale_year ),
cte2 as (
select *,dense_rank() over(partition by sale_year order by avg_sale desc) as sale_rank 
from  cte1)
select * from cte2 where sale_rank = 1;
-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 
select customer_id,sum(total_sale) as sales_by_customer
from retail_sales
group by customer_id
order by sales_by_customer desc
limit 5;
-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
select category,count(distinct customer_id)
from retail_sales
group by category;
-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)
select 
case 
    when hour(sale_time) < 12 then "morning"
    when hour (sale_time) between 12 and 17 then "afternoon"
    else "evening" 
end as shift,
count(*) as orders
from retail_sales
group by shift;

-- Additional Data Exploration on business insights
-- Query to find the total orders and sales amount by category and age groups(teen,adults,middle age and senior adult)
select 
case
    when age < 19 then "teen"
    when age between 20 and 39 then "adult"
    when age between 40 and 59 then "middle age adult"
    else "senior adult"
end as age_group,
category,
count(*) as orders,
sum(total_sale) as sales_amt
from retail_sales 
group by category,age_group
order by age_group,sales_amt desc