-- Window Functions

select * from dim_product;

Select round(avg(unit_price),2), category
from dim_product
group by category;

Select *, sum(unit_price) over(partition by category order by	unit_price) as running_sum
from dim_product;

Select *, sum(unit_price) over(order by	launch_date) as running_sum
from dim_product;

Select *, avg(unit_price) over(order by	launch_date) as Moving_avg
from dim_product;

-- Frame Clauses

Select * ,sum(unit_price) over(order by launch_date rows between unbounded preceding AND current row) as running_sum
from dim_product; 

Select * ,round(sum(unit_price) over(order by launch_date rows between unbounded preceding AND unbounded following)) as total
from dim_product;

-- Ranking Functions:


Select *,
unit_price,
row_number() over(order by unit_price) as "row_number",
rank() over(order by unit_price) as "rank",
dense_rank() over(order by unit_price) as "dense_rank"
from
dim_product;

-- partition by 

Select *,
unit_price,
row_number() over(partition by category order by unit_price) as "row_number",
rank() over(partition by category order by unit_price) as "rank",
dense_rank() over(partition by category order by unit_price) as "dense_rank"
from
dim_product;

