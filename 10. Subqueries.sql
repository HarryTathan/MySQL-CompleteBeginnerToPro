-- subqueries

Select * from dim_product where unit_price > (select avg(unit_price) from dim_product);

select * from (Select * from dim_product where unit_price > (select avg(unit_price) from dim_product)) as subquery1
where product_key <= 15;

select * from (select * from (Select * from dim_product where unit_price > (select avg(unit_price) from dim_product)) as subquery1 where product_key <= 15) as subquery2
where category = "clothing";

SELECT 
    *
FROM
    (SELECT 
        *
    FROM
        (SELECT 
        *
    FROM
        (SELECT 
        *
    FROM
        dim_product
    WHERE
        unit_price > (SELECT 
                AVG(unit_price)
            FROM
                dim_product)) AS subquery1
    WHERE
        product_key <= 15) AS subquery2
    WHERE
        category = 'clothing') AS subquery3
WHERE
    brand = 'brandD';
    
    
