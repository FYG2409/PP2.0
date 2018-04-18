create database PP;
use PP;

create table Cat_Estados(
	Id_Estado int(4),
    Nom_Estado varchar (20),
    primary key (Id_Estado)
);

create table Cat_Delegaciones(
	Id_Delegacion int(4),
    Nom_Delegacion varchar(50),
    Id_Estado int(4),
    primary key (Id_Delegacion),
    foreign key (Id_Estado) references Cat_Estados(Id_Estado)
);

create table Cat_Colonias(
	Id_Colonia int(4),
    Nom_Colonia varchar(50),
    Id_Delegacion int(4),
    primary key (Id_Colonia),
    foreign key (Id_Delegacion) references Cat_Delegaciones(Id_Delegacion)
);

create table Cat_Calles(
	Id_Calle int(4),
    Nom_Calle varchar(50),
    Id_Colonia int(4),
    primary key (Id_Calle),
    foreign key (Id_Colonia) references Cat_Colonias(Id_Colonia)
);

create table Cat_Direcciones(
	Id_Direccion int(4),
    Numero int (4),
    Id_Calle int(4),
    primary key (Id_Direccion),
    foreign key (Id_Calle) references Cat_Calles(Id_Calle)
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
    Id_Direccion int (4),
    Id_Contacto int(4),
    Clave varchar (20),
    primary key (Id_Persona),
    foreign key (Id_Direccion) references Cat_Direccion(Id_Direccion),
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
    Id_Raza int(4),
    Edad int(3),
    Descripcion varchar(50),
    Id_Direccion int(4),
    Imagen blob,
    primary key (Id_Mascota),
    foreign key (Id_Raza) references Cat_Razas(Id_Raza),
    foreign key (Id_Direccion) references Cat_Direcciones(Id_Direccion)
);

create table Rel_Persona_Mascota(
	Id_Rel_Persona_Mascota int(4),
    Id_Persona int (4),
    Id_Mascota int(4),
    primary key (Id_Rel_Persona_Mascota),
    foreign key (Id_Persona) references Personas(Id_Persona),
    foreign key (Id_Mascota) references Mascotas(Id_Mascota)
);