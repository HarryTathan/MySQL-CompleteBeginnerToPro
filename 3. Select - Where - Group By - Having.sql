-- using select statement to fetch data from tables 

select * from fact_sales;

select * from dim_customer;

-- Aggregate functions | Group by | Having clauses | limit

-- Count aggregate fnction 

select count(gender) from dim_customer
where state = 'Alaska'
group by gender
limit 100;

select customer_id, first_name from dim_customer
where first_name="nathan"
limit 100;


