delimiter $$
drop function if exists getApellido;
CREATE function getApellido(dni VARCHAR(9)) returns VARCHAR(20)
begin
declare apellido VARCHAR(20);

select e.apellidos into apellido from empleados e, datospersonales d where e.id_empleado = d.clave_empleado and d.dni = dni;
return apellido;
end $$
delimiter ;

select getApellido('08521036Y');