delimiter $$

CREATE function numPar(num INT) returns boolean
begin
declare par boolean;

if mod(num,2) <> 0 then 
	set par = false;
else 
	set par = true;
end if;

return par;

end $$

delimiter ;

select numPar(9);