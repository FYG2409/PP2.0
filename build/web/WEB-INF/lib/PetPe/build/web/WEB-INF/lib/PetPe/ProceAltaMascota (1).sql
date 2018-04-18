use PP;

drop procedure if exists sp_Alta_Masc;
delimiter **;
create procedure sp_Alta_Masc( in Id_Mas int(4), in N_Mas varchar(30), in Sex_Mas varchar(20) ,
 in Id_Ra int(4), in Ed int(3), in Descr varchar(150), in Id_Col int(4), in Img varchar(255), out resu int(1))
begin
declare xId_Mas int;
declare xMsj varchar(50);
declare existe int;
if(Id_Mas=0) then
	set existe= (select count(*) from Mascotas where Nom_Mascota=N_Mas and Sexo_Mascota=Sex_Mas and Id_Colonia=Id_Col);
    
    if(existe=0) then
		set xId_Mas = (select ifnull(max(Id_Mascota), 0) + 1 from mascotas);
        insert into Mascotas (Id_Mascota, Nom_Mascota, Sexo_Mascota ,Id_Raza, Edad, Descripcion, Id_Colonia, Imagen) values(xId_Mas , N_Mas ,Sex_Mas,  Id_Ra,  Ed,  Descr , Id_Col ,  Img);
        set xMsj='Mascota correctamente registrado';
        set resu=1;
	else
		set xMsj='La Mascota ya existe';
        set xId_Mas=0;
        set resu=2;
	end if;
end if;
select xId_Mas as Id_Mascota, xMsj, resu;
end**;