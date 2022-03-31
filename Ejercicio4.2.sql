delimiter $$
drop function if exists numEmpleados2;
CREATE function numEmpleados2() returns int
DETERMINISTIC
begin
	declare variable int;
	select count(*) into variable from empleados where id_departamento = (select id_departamento from departamento where nombre = 'Personal');
    
    return variable;
end $$
delimiter ;

select numEmpleados2();

