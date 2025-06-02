CREATE DATABASE xhosting;


use xhosting;

create table usuario(
id int AUTO_INCREMENT not null PRIMARY KEY,
nombre varchar(20)not null,
correo varchar(50) not null,
telf int(9) null,
pass varchar(255) not null,
imagen longblob not null,
plan varchar(20) null,
CONSTRAINT unique_correo UNIQUE (correo),  
CONSTRAINT unique_telf UNIQUE (telf)  
);


create table maquinas(
id int AUTO_INCREMENT not null PRIMARY KEY,
nombre varchar(50) not null,
so varchar(20) not null,
cpu int not null,
ram int not null,
disco int not null,
asistenciatecnica TINYINT(1) not null,
monitorizacion TINYINT(1) not null,
id_usuario int null
);


ALTER TABLE Maquinas ADD CONSTRAINT propietario FOREIGN KEY (id_usuario)
REFERENCES usuario (id)
	on update cascade
