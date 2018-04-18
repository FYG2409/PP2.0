use PP;
drop procedure if exists AltasP;
delimiter **
create procedure AltasP(in Id int(4), in Nick varchar(25), in Nom_Per varchar(25), in ApPat_Per varchar(20), 
in ApMat_Per varchar(20), in Clave_Per varchar(20), in CorreoC_Per varchar(50), 
in TelC_Per varchar(15), in IdColoD_Per int(4), in IdDeleD_Per int(4), out resu int(1))

begin

declare xIdAlumno int;
declare xMsj varchar (50);
declare existe int;

if (Id = 0) then
	set existe = (select count(*) from personas where NickName = Nick);
    
	if (existe = 0) then
		set xIdAlumno = (select ifnull(max(Id_Persona), 0) + 1 from personas);
        INSERT into personas(Id_Persona, NickName, Nom_Persona, Ap_Pat, Ap_Mat, Clave, Correo, Num_Telefonico, Id_Colonia, Id_Delegacion)
          values (xIdAlumno, Nick, Nom_Per, ApPat_Per, ApMat_Per, Clave_Per, CorreoC_Per, TelC_Per, IdColoD_Per, IdDeleD_Per);
		set resu = 1;
	else
		set resu = 2;
		set xIdAlumno = 0;
    end if;
end if; 
select xIdAlumno as CAMPO, resu; 
end; **