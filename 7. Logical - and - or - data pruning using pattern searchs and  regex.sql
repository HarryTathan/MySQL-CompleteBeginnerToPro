-- Logical AND | OR

SELECT 
    *
FROM
    dim_customer
WHERE
    (gender = 'f') AND (country = 'France')
HAVING join_date > '2022-01-01';

SELECT 
    *
FROM
    dim_customer
WHERE
    (gender = 'f') AND (country = 'France') AND (join_date > '2022-01-01');
    

SELECT 
    *
FROM
    dim_customer
WHERE
    (gender = 'f') AND ((country = 'France') or (join_date > '2022-01-01'));
    
SELECT 
    *
FROM
    dim_customer
WHERE
    (gender = 'f') AND ((country = 'France') or (country = 'Tunisia')) and  (join_date > '2022-01-01');


-- pruning data using where 
-- Searching reords using patterns
    
SELECT 
    *
FROM
    dim_customer
WHERE
    first_name LIKE 'H_r%';
 
 
-- order by for sorting 
 
SELECT 
    *
FROM
    dim_product
ORDER BY category , brand , unit_price DESC;

Select product_name as "Product Name", category, unit_price as "Price"
from dim_product
order by Price desc;

select * from dim_product;

SELECT 
    category,
    ROUND(AVG(unit_price), 2) AS 'Average_Price',
    COUNT(unit_price) AS 'number of items'
FROM
    dim_product
WHERE
    category != 'Clothing'
GROUP BY category
HAVING Average_Price < 500
ORDER BY Average_Price DESC;
