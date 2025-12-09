-- stored procedure

delimiter $$

create procedure procedure_1( IN p_id int, IN p_name varchar(100), IN p_email varchar(100))
begin
	insert into cust
    values
    (p_id, p_name, p_email);
END $$

delimiter ;

call procedure_1(1, "Garry", "gg");

select * from cust;

