use PP;

drop procedure if exists sp_Consulta_Masc;
delimiter **;
create procedure sp_Consulta_Masc( in Id_Mas int(4), out Id_Mascota int(4), out Nombre varchar(30), out Sexo varchar(20), out Tipo varchar(30), out Raza varchar(50), out Edad int(3), out Descripcion varchar(100), out Colonia varchar(50), out Delegacion varchar(255), out Imagen text )
begin
declare xMsj varchar(50);
declare xN_Mas varchar(30);
declare xSex_Mas varchar(20);
declare xRaza varchar(30);
declare xIdRaza int(4);
declare xTipo varchar(30);
declare xIdTipo int(4);
declare xEdad int(3);
declare xDesc varchar(50);
declare xIdCol int (4);
declare xColonia varchar(30);
declare xIdDeleg int(4);
declare xDeleg varchar (30);
declare xImg text;
declare existe int;
if(Id_Mas!=0) then
	set existe= (select count(*) from Mascotas where Id_Mascota=Id_Mas);
    
    if(existe=0) then
		set xMsj='La Mascota no existe';
	else
		set xMsj='La Mascota es esta';
        set xN_Mas=(select Nom_Mascota from mascotas where Id_Mascota=Id_Mas);
        set xSex_Mas=(select Sexo_Mascota from mascotas where Id_Mascota=Id_Mas);
        set xIdRaza=(select Id_Raza from mascotas where Id_Mascota=Id_Mas);
        set xRaza=(select Nom_Raza from cat_razas where Id_Raza=xIdRaza);
        set xIdTipo=(select Id_Tipo from cat_razas where Id_Raza=xIdRaza);
        set xTipo=(select Nom_Tipo from cat_tipos where Id_Tipo=xIdTipo);
        set xEdad=(select Edad from mascotas where Id_Mascota=Id_Mas);
        set xDesc=(select Descripcion from mascotas where Id_Mascota=Id_Mas);
        set xIdCol=(select Id_Colonia from mascotas where Id_Mascota=Id_Mas);
        set xColonia=(select Nom_Colonia from cat_colonias where Id_Colonia=xIdCol);
        set xIdDeleg=(select Id_Delegacion from cat_colonias where Id_Colonia=xIdCol);
        set xDeleg=(select Nom_Delegacion from cat_delegaciones where Id_Delegacion=xIdDeleg);
        set xImg=(select Imagen from mascotas where Id_Mascota=Id_Mas);
	end if;
end if;
select Id_Mas as Id_Mascota, xN_Mas as Nombre, xSex_Mas as Sexo ,xTipo as Tipo, xRaza as Raza,
 xEdad as Edad, xDesc as Descripcion, xColonia as Colonia, xDeleg as Delegacion, xImg as Imagen,  xMsj;
end**;

call sp_Consulta_Masc(1); 