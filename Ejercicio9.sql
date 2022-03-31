delimiter $$
drop function if exists numMayor;
CREATE function numMayor(num1 DOUBLE,num2 DOUBLE, num3 DOUBLE) returns DOUBLE
begin
declare num DOUBLE;
IF num1 >= num2 then
	if num1 >= num3 then
    set num = num1;
    end if;
else if num2 >= num3 then
	set num = num2;
    else set num = num3;
    end if;
end if;

return num;
end $$

delimiter ;

select numMayor(11,8,10);