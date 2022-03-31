delimiter $$
drop procedure if exists fechaAlta;

CREATE procedure fechaAlta()

begin
declare fecha varchar(10);

select min(da.fecha_alta) from datospersonales da, departamento de,empleados e where da.clave_empleado = e.id_empleado and e.id_departamento = de.id_departamento and de.nombre = 'Almacén';

end $$

delimiter ;

call fechaAlta();