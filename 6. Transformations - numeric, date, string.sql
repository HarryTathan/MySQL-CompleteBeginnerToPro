select * from dim_product;
 
-- Numeric Transformations
 
SELECT 
    *,
    ROUND((unit_price * .9), 2) AS 'discounted price',
    ROUND((unit_price * .9) + .1 * (unit_price * .9),2) AS 'Discounted Price + gst'
FROM
    dim_product;
    
    
 -- Date Transformations
 
 Select * from dim_date;
 
 select date, now() as "Current Timestamp", utc_date(), utc_time(), utc_timestamp(), date(utc_timestamp()), datediff(utc_date(),date)/365 as yrs_since, datediff(utc_date(),date) from dim_date;
 
 select date, year(date), month(date), day(date), weekday(date), dayname(date) from dim_date;
 
 select adddate(utc_date,10), subdate(utc_date,5);
 
 select cast('2025-01-12' as datetime);
 
 -- date format and casting
 
 select date, date_format(date, "%W, %D %M %y") from dim_date;
 
 select customer_key, Cast(customer_key as char(20)) from dim_customer;
 
 
 -- String Functions:
 
 Select (concat(first_name," ", last_name)) as "Name" from dim_customer;
 
 Select *, length(phone) as len_ph_no from dim_customer;
 
 Select *,substring(country,1,3) as Country_Code  from dim_customer;
 
 Select *, replace(replace(replace(email,'example','trymail'),'.net','.com'),'.org','.com') as new_email  from dim_customer;
 
 