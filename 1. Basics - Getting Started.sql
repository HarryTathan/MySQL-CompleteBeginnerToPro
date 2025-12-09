-- create a database to work on.
create database sql_project;

-- select that data base to create tables
use sql_project;

-- creating first table
create table stores(
store_id INT,
store_name varchar (20)
);

-- Insering values into your tables

insert into stores
values 
(1, "mystore"),
(2, "yourstore");

-- By deafult SQL doesn't allow you to execute delete/update statement in some scenarions, so you need to use the following command to get trough:
set sql_safe_updates = 0;

select * from stores;

delete from stores where store_id = 3;
-- view table schema
desc stores;



INSERT INTO stores(store_id)
VALUES
(3);

-- Alter table and impose constraints.

alter table stores
alter store_name Set default "N/a";

alter table stores
modify store_name varchar(20) not null;

