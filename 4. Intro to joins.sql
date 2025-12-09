Select f.sales_id, d.date_key, c.first_name, c.last_name, c.gender, c.email, c.phone from fact_sales f
join dim_date d on f.date_key = d.date_key
join dim_customer c on f.customer_key = c.customer_key;

