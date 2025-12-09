create table orders(
o_id int,
cust_id int primary key,
price int);

insert into orders
values 
(1, 101, 1000),
(2,201,1100),
(3,301,1200),
(4,401,1500);

select * from orders;


create table cust(
id int,
name varchar (10),
email varchar (10));

insert into cust
values 
(1, "harry", "aa"),
(2,"Robby","bb"),
(3,"Sam","CC"),
(3,"hagrid","dd"),
(5,"dora","dd"),
(6,"Harman","ff");

select * from cust;
select * from orders;

select o.o_id, c.id from orders o 
right join cust c on o.o_id = c.id;

select * from orders o 
left join cust c on o.o_id = c.id
union
select * from orders o 
right join cust c on o.o_id = c.id;

select * from orders  
cross join cust;

select o.o_id, c.id from cust c  
cross join orders o;

