delimiter $$

CREATE function numEmpleados(depart VARCHAR(10)) returns int
DETERMINISTIC
begin
	declare variable int;
	select count(*) into variable from empleados where id_departamento = (select id_departamento from departamento where nombre = depart);
    
    return variable;
end $$

delimiter ;

select numEmpleados('Personal') as "numeroDeEmpleados";