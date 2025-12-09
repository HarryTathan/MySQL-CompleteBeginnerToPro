-- CTEs

with cte4 as (with cte3 as (with cte2 as (with cte1 as (Select * from dim_product where unit_price > (select avg(unit_price) from dim_product))
select * from cte1 where category = "Clothing")
select * from cte2 where brand = "BrandD" and unit_price > 700)
select * from cte3 where launch_date < "2023-06-08")
select * from cte4 where product_name in ("Our Raise", "Pressure That");


with cte1 as (select * from dim_product where unit_price > (select avg(unit_price) from dim_product)),
cte2 as (select * from cte1 where category in ("Clothing","Sports"))
select * from cte2
order by unit_price;

