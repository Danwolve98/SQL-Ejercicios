delimiter $$
drop procedure if exists diaDeLaSemana;
CREATE procedure diaDeLaSemana(numDia INT)

begin
declare dia VARCHAR(9);
CASE
	WHEN numDia = 1 THEN set dia = 'Lunes';
    WHEN numDia = 2 THEN set dia = 'Martes';
    WHEN numDia = 3 THEN set dia = 'Miércoles';
    WHEN numDia = 4 THEN set dia = 'Jueves';
    WHEN numDia = 5 THEN set dia = 'Viernes';
    WHEN numDia = 6 THEN set dia = 'Sábado';
    WHEN numDia = 7 THEN set dia = 'Domingo';
END CASE;

select dia;

end $$

delimiter ;

call diaDeLaSemana(7);