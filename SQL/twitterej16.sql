CREATE TABLE if not exists Usuarios (
	id_nickname varchar(20) primary key,
    imagen_perfil varchar(50),
    nombre varchar(20),
    correo varchar(30)
    );
CREATE TABLE if not exists Mensajes (
	texto text(100),
    imagenes varchar(50),
    videos varchar(50),
    id_mensajes int primary key auto_increment,
    id_nickname varchar(20),
    CONSTRAINT fk_id_nickname FOREIGN KEY (id_nickname) REFERENCES Usuarios (id_nickname)
    );
