drop database PP;
create database PP;
use PP;

create table Cat_Delegaciones(
	Id_Delegacion int(4),
    Nom_Delegacion varchar(50),
    primary key (Id_Delegacion)
);

create table Cat_Colonias(
	Id_Colonia int(4),
    Nom_Colonia varchar(50),
    Id_Delegacion int(4),
    primary key (Id_Colonia),
    foreign key (Id_Delegacion) references Cat_Delegaciones(Id_Delegacion)
);


create table Cat_Contactos(
	Id_Contacto int(4),
    Correo varchar(50),
    Num_Telefonico varchar(15),
    primary key(Id_Contacto)
);

create table Personas(
	Id_Persona int(4),
    Nom_Persona varchar(25),
    Ap_Pat varchar (20),
    Ap_Mat varchar (20),
    Id_Colonia int (4),
    Id_Contacto int(4),
    Clave varchar (20),
    primary key (Id_Persona),
    foreign key (Id_Colonia) references Cat_Colonias(Id_Colonia),
    foreign key (Id_Contacto) references Cat_Contactos(Id_Contacto)
);

create table Cat_Tipos(
	Id_Tipo int(4),
    Nom_Tipo varchar(20),
    primary key(Id_Tipo)
); 

create table Cat_Razas(
	Id_Raza int(4),
    Nom_Raza varchar(30),
    Id_Tipo int(4),
    primary key(Id_Raza),
    foreign key(Id_Tipo) references Cat_Tipos(Id_Tipo)
);

create table Mascotas(
	Id_Mascota int(4),
    Nom_Mascota varchar(30),
    Id_Raza int(4),
    Edad int(3),
    Descripcion varchar(150),
    Id_Colonia int(4) null,
    Imagen varchar(100) null,
    Sexo_Mascota varchar(20),
    primary key (Id_Mascota),
    foreign key (Id_Raza) references Cat_Razas(Id_Raza),
    foreign key (Id_Colonia) references Cat_Colonias(Id_Colonia)
);

create table Rel_Persona_Mascota(
	Id_Rel_Persona_Mascota int(4),
    Id_Persona int (4),
    Id_Mascota int(4),
    primary key (Id_Rel_Persona_Mascota),
    foreign key (Id_Persona) references Personas(Id_Persona),
    foreign key (Id_Mascota) references Mascotas(Id_Mascota)
);


insert into Cat_Tipos values (1,'Perro');
insert into Cat_Razas values (1,'Schnauzer',1);
select Nom_Mascota from mascotas where Id_Mascota=1;


insert into cat_razas values(2,'Pug', 1);
insert into cat_razas values(3,'Chihuahua', 1);
insert into cat_razas values(4,'Salchicha', 1);
insert into cat_razas values(5,'Husky', 1);
insert into cat_razas values(6,'Bóxer', 1);
insert into cat_razas values(7,'Beagle', 1);

insert into cat_tipos values(2, 'Gato'); 

insert into cat_razas values(1,'Siamés', 2);
insert into cat_razas values(2,'Ragdoll', 2);
insert into cat_razas values(3,'Bengala', 2);
insert into cat_razas values(4,'Azul ruso', 2);
insert into cat_razas values(5,'Burmés', 2);
insert into cat_razas values(6,'Egipcio', 2);
insert into cat_razas values(7,'Korat', 2);


insert into cat_tipos values(3, 'Pez'); 

insert into cat_tipos values(4, 'Conejo'); 


