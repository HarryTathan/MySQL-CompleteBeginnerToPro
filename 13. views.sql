-- views

with cte as (select * ,row_number() over(partition by email order by email) as rn from cust)
select * from cte where rn = 1; 

create view dedup_view as with cte as (select * ,row_number() over(partition by email order by email) as rn from cust)
select * from cte where rn = 1; 

select * from dedup_view;