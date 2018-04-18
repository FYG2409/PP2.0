use PP;
drop procedure if exists InicioP;
delimiter **
create procedure InicioP(in Nick varchar(25), in Clave_Per varchar(20), out resu int(1))

begin
declare xIdAlumno int;
declare contra varchar(20);
declare NickN varchar(25);
declare existe int;

    set existe = (select count(*) from personas where NickName = Nick);
    
    if(existe=0) then
		set resu = 5;
	else
        set NickN=(select NickName from personas where NickName=Nick);
        set contra=(select Clave from personas where NickName=Nick);
        if (contra = Clave_Per) then
			set resu = 3;
		else
			set resu = 4;
            end if;
	end if;
select xIdAlumno as CAMPO, resu; 
end; **