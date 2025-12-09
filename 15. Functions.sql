-- Functions
delimiter $$
Create function square_it(x int)
returns int
deterministic
begin 
return x*x;
end $$

delimiter ;

Select square_it(4);

select unit_price, square_it(unit_price) from dim_product;