use PP;
call sp_Alta_Masc(0,'Mika', 'Hembra', 1, 2, 'bonita', 1, 'http://img.jpg', @resu);
call sp_Alta_Masc(0,'Saul', 'Hembra', 1, 2, 'bonita', 1, 'http://img.jpg', @resu);

call sp_Consulta_Masc(1);

select*from Mascotas;
delete from Mascotas;

