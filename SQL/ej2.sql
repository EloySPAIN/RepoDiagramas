CREATE DATABASE IF NOT EXISTS ej8;
use ej8;
CREATE TABLE if not exists profesor (
	dni varchar(9) primary key,
	nombre varchar(50),
	apellidos varchar(50),
	telefono int,
	direccion varchar(200),
	edad int
);

CREATE TABLE if not exists curso (
	idcurso int  primary key AUTO_INCREMENT,
	horas int,
	programa varchar(50),
	dniprofesor varchar(9),
    CONSTRAINT dniprofesor FOREIGN KEY (dniprofesor) REFERENCES profesor(dni)
);

CREATE TABLE if not exists alumno (
	dni varchar(9) primary key,
	telefono int,
	direccion varchar(200),
	edad int
);

CREATE TABLE if not exists cursa (
	idcurso  int  primary key AUTO_INCREMENT,
	dnialumno varchar(9),
	fechasini date,
	fechafin date,
	nota int,
    CONSTRAINT dnialumno FOREIGN KEY (dnialumno) REFERENCES alumno(dni)
)