-- Conditionals

Select *, 
case when unit_price <= 200 then "affordable"
when unit_price between 200 and 500 then "Mid-range"
else "Expensive"
end as price_category 
from dim_product;


Select *, 
case when unit_price <= 200 and category = "clothing" then "affordable"
when unit_price between 200 and 500 and category = "clothing" then "Mid-range"
when unit_price > 500 and category = "clothing" then "Expensive"
else concat("No category for ", category)
end as price_category 
from dim_product;