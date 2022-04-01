delimiter $$
drop function if exists areaCirculo;
CREATE function areaCirculo(radio DOUBLE) returns DOUBLE

begin

declare area DOUBLE;
set area = (power(radio,2)*Pi());
return area;

end $$

delimiter ;

select areaCirculo(2) as 'AREA';