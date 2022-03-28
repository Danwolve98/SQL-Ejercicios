delimiter $$

CREATE function numEmpleados() returns int
DETERMINISTIC
begin
	declare variable int;
	select count(*) into variable from empleados where id_departamento = 'Empaque';
    
    return variable;
end $$

delimiter ;