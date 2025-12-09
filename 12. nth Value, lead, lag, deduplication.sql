-- Real world Sceanios

-- nth values: Top nth value

with  cte as (Select *, dense_rank() over(order by unit_price desc) as Ranking from dim_product)
select * from cte where Ranking = 5;

Select t1.* from 
(Select *, dense_rank() over(order by unit_price desc) as Ranking from dim_product) as t1 where Ranking = 5;


select *, sum(unit_price) over(order by unit_price) as csum from dim_product; 

-- Nth value in each category: Top 5th most expensive

with  cte as (Select *, dense_rank() over(partition by category order by unit_price desc) as Ranking from dim_product)
select * from cte where Ranking = 5;

-- removing duplicates / deduplication:

Select * from cust;



insert into cust
values
(1,"harry","aa"),
(3,"Bobby","CC");

with cte as (select * ,row_number() over(partition by email order by email) as rn from cust)
select * from cte where rn = 1; 

-- Lag / lead

Create table weather(
id int,
temp float
);

insert into weather
values
(1,10),
(2,30),
(3,15),
(4,24),
(5,13),
(6,14),
(1,17);

select *, lead(temp,1,"n/a") over(order by id) as temp_lead, lag(temp,1,"n/a") over(order by id) as temp_lag  from weather;
