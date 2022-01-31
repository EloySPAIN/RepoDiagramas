USE Ejercicios;
CREATE TABLE if not exists Usuarios (
	id_nickname varchar(20) primary key,
    imagen_perfil varchar(50),
    nombre varchar(20),
    correo varchar(30)
    );
CREATE TABLE if not exists Tweet (
	id_mensajes int primary key auto_increment,
	texto varchar(100),
    imagenes varchar(50),
    videos varchar(50),
    id_nickname varchar(20),
    CONSTRAINT fk_id_nickname FOREIGN KEY (id_nickname) REFERENCES Usuarios (id_nickname)
    );
/*Usuarios*/
INSERT INTO Usuarios (id_nickname, imagen_perfil, nombre, correo) VALUES ("@eloy", "asdas.png", "eloy", "eloy@asdsad.com");
INSERT INTO Usuarios (id_nickname, imagen_perfil, nombre, correo) VALUES ("@victor", "holaa.png", "victor", "victor@asdsad.com");
INSERT INTO Usuarios (id_nickname, imagen_perfil, nombre, correo) VALUES ("@samuel", "si.png", "eloy", "samuel@asdsad.com");
INSERT INTO Usuarios (id_nickname, imagen_perfil, nombre, correo) VALUES ("@nosequeponer", ":).png", "a", "sdsad@asdsad.com");
INSERT INTO Usuarios (id_nickname, imagen_perfil, nombre, correo) VALUES ("@jordi", ":O.png", "jordi", "jordi@asdsad.com");
INSERT INTO Usuarios (id_nickname, imagen_perfil, nombre, correo) VALUES ("@miguelangel", "555555.png", "miguelangel", "mgiuelangel@asdsad.com");
INSERT INTO Usuarios (id_nickname, imagen_perfil, nombre, correo) VALUES ("@pau", "woowowow.png", "pau", "pau@asdsad.com");
INSERT INTO Usuarios (id_nickname, imagen_perfil, nombre, correo) VALUES ("@1", "1.png", "1", "1@asdsad.com");
INSERT INTO Usuarios (id_nickname, imagen_perfil, nombre, correo) VALUES ("@2", "2.png", "2", "2@asdsad.com");
INSERT INTO Usuarios (id_nickname, imagen_perfil, nombre, correo) VALUES ("@3", "3.png", "3", "3@asdsad.com");

/*Tweet*/
INSERT INTO Tweet (texto, imagenes, videos, id_nickname) VALUES ("texto1", "asdas.png", NULL, "@eloy");
INSERT INTO Tweet (texto, imagenes, videos, id_nickname) VALUES ("texto2", NULL, NULL, "@eloy");
INSERT INTO Tweet (texto, imagenes, videos, id_nickname) VALUES ("texto3", NULL, NULL, "@samuel");
INSERT INTO Tweet (texto, imagenes, videos, id_nickname) VALUES ("texto4", ":).png", NULL, "@samuel");
INSERT INTO Tweet (texto, imagenes, videos, id_nickname) VALUES ("texto5", ":O.png", "video1.wav", "@samuel");
INSERT INTO Tweet (texto, imagenes, videos, id_nickname) VALUES ("texto6", NULL, "video2.wav", "@2");
INSERT INTO Tweet (texto, imagenes, videos, id_nickname) VALUES ("texto7", "woowowow.png", "video3.wav", "@2");
INSERT INTO Tweet (texto, imagenes, videos, id_nickname) VALUES ("texto8", "1.png", NULL, "@2");
INSERT INTO Tweet (texto, imagenes, videos, id_nickname) VALUES ("texto9", NULL, "video4.wav", "@eloy");
INSERT INTO Tweet (texto, imagenes, videos, id_nickname) VALUES ("texto10", NULL, "video5.wav", "@eloy");

