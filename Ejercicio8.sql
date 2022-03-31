delimiter $$
drop function if exists areaCirculo;
CREATE function areaCirculo(radio DOUBLE) returns DOUBLE

begin

declare area DOUBLE;
set area = (2*radio*Pi());
return area;

end $$

delimiter ;

select areaCirculo(2) as 'AREA';