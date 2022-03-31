delimiter $$
drop procedure if exists setFecha;
CREATE procedure setFecha(nomDepart VARCHAR(15))
begin
declare idEmpleado VARCHAR(20);
declare fechaAntigua DATE;
set fechaAntigua = (select min(datos.fecha_alta) from datospersonales datos, empleados e, departamento dept where datos.clave_empleado = e.id_empleado and nomDepart  = dept.nombre and dept.id_departamento = e.id_departamento);
set idEmpleado = (select datos.clave_empleado from datospersonales datos, empleados e, departamento dept where datos.clave_empleado = e.id_empleado and dept.id_departamento = e.id_departamento and datos.fecha_alta = fechaAntigua);
update datospersonales set fecha_alta = SYSDATE() where clave_empleado = idEmpleado;
select fechaAntigua;
end $$
delimiter ;

call setFecha('Almacén');

select * from datospersonales order by fecha_alta desc;
