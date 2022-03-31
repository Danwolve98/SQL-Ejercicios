delimiter $$
drop procedure if exists notasAlumnos;
CREATE procedure notasAlumnos(nota INT)
begin
declare resultado VARCHAR(15);
case
	when nota >= 0 and nota < 5 then  set resultado = 'Insuficiente';
    when nota >= 5 and nota < 6 then  set resultado = 'Aprobado';
    when nota >= 6 and nota < 7 then  set resultado = 'Bien';
    when nota >= 7 and nota < 9 then  set resultado = 'Notable';
    when nota >= 9 and nota <= 10 then  set resultado = 'Sobresaliente';
    else set resultado = 'NOTA NO VÁLIDA';
end case;
select resultado;
end $$

delimiter ;

call notasAlumnos(7);