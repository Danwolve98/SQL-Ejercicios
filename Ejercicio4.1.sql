delimiter $$

CREATE procedure empleado(codigo VARCHAR(9))

begin
	select dni from datospersonales where clave_empleado = codigo;

end$$
delimiter ;

call empleado('EMP08');