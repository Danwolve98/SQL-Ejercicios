delimiter $$

CREATE procedure sumarValores2(valor1 int, valor2 int)

begin
	declare variable int;
    set variable = valor1 + valor2;
    
    select variable;

end$$
delimiter ;

call sumarValores2(10,5);