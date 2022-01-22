create database posts;

create table post(
    id serial,
    nombre_usuario varchar(255) not null,
    fecha_creacion timestamp default now(),
    contenido text not null,
    descripcion text,
    primary key (id)

);

insert into post (nombre_usuario, contenido, descripcion) values ('Pamela', 'Hoy Noche de Baile', 'Con Musica en Vivo');

insert into post (nombre_usuario, contenido, descripcion) values ('Pamela', 'Semana de Viajes', 'Organizado por el departamento de Turismo');

insert into post (nombre_usuario, contenido, descripcion) values ('Carlos', 'Clases de Guitarra Clasica', 'Desde el Viernes a las 15:00 horas');

alter table post add titulo varchar(255);

UPDATE post SET titulo = 'Fiesta' WHERE id ='1';
UPDATE post SET titulo = 'Viajes' WHERE id ='2';
UPDATE post SET titulo = 'Aprende Guitarra' WHERE id ='3';

insert into post (nombre_usuario, contenido, descripcion, titulo) values ('Pedro', 'Compraventa de Autos Usados', 'Tenemos los mejores precios', 'Cambia Tu Vehículo');

DELETE FROM post WHERE nombre_usuario='Carlos';

insert into post (nombre_usuario, contenido, descripcion, titulo) values ('Carlos', 'Clases de Piano', 'Desde el Jueves a las 17:00 horas', 'Aprende Piano');