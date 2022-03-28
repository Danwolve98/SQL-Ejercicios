delimiter $$
CREATE function sumarValores(valor1 int, valor2 int) returns int
DETERMINISTIC
begin
	declare variable int;
    set variable = valor1 + valor2;
    
    return variable;

end$$
delimiter ;

select sumarValores(10,9) as suma;