create table clientes(
dni varchar(9) primary key,
nombre varchar(255),
apellidos varchar(255),
direccion  varchar(255),
telefono int
);

create table tarjeta_embarque(
datos_personales_cliente varchar(255) primary key,
num_reservas int,
fecha date,
dni2 varchar(9),
constraint FK_tarjeta_dni foreign key(dni2) references clientes(dni)
);

create table vuelos(
codigo varchar(255) primary key,
aero_salida varchar(255),
fecha date,
llegada varchar(255),
hora_salida varchar(255),
dni2 varchar(9),
constraint FK_vuelos_dni foreign key(dni2) references clientes(dni)

);

create table aeropuerto(
codigo varchar(255) primary key,
pais varchar(255),
localidad varchar(255),
nombre varchar(255),
codigo2 varchar(255),
constraint FK_aeropuerto_codigo foreign key(codigo2) references vuelos(codigo)
);

create table aviones(
codigo varchar(255)primary key,
num_plazas int,
codigo2 varchar(255),
constraint FK_aviones_codigo foreign key(codigo2) references vuelos(codigo)
);

create table asientos(
fila varchar(255) primary key,
planta varchar(255),
columna varchar(255),
codigo2 varchar(255),
constraint FK_asientos_codigo foreign key(codigo2) references aviones(codigo)
);
