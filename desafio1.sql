--parte1

-- . Crear Base de datos posts
CREATE DATABASE prueba1;
\c prueba1

--Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido,descripción
CREATE TABLE post
(id SERIAL,
nombre_de_usuario VARCHAR(25),
fecha_de_creacion DATE,
contenido VARCHAR,
descripcion VARCHAR);

--Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos"
INSERT INTO post (nombre_de_usuario, fecha_de_creacion, contenido, descripcion)
VALUES ('Pamela', '2020-12-25', 'feliz navidad a todos', 'un saludo de navidad'),
('Pamela', '2021-01-01', 'feliz año nuevo, salud para todos', 'un saludo de fin de año'),
('Carlos', '2021-02-12', 'que vacaciones mas aburridas aqui encerrado', 'covid-19');

--Modificar la tabla post, agregando la columna título
ALTER TABLE post ADD COLUMN titulo VARCHAR

--. Agregar título a las publicaciones ya ingresadas
UPDATE post SET titulo='navidad' WHERE id=1
UPDATE post SET titulo='año nuevo' WHERE id=2
UPDATE post SET titulo='me contagie' WHERE id=3

--Insertar 2 post para el usuario "Pedro"
INSERT INTO post (nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo)
VALUES ('Pedro', '2021-03-05', 'aqui dandole con todo la vuelta al trabajo', 'marzo', 'marzo con todo'),
('Pedro', '2021-03-25', 'me cerraron el gym denuevo, maldito covid termina ya', 'covid-19', 'toque de queda');

--Eliminar el post de Carlos
DELETE FROM post WHERE nombre_de_usuario='Carlos';

--Ingresar un nuevo post para el usuario "Carlos"
INSERT INTO post (nombre_de_usuario, fecha_de_creacion, contenido, descripcion, titulo)
VALUES ('Carlos', '2021-01-04', 'me borraron un post de hace tiempo no se que sucede aca', 'sensura', 'el covid sensura'),
('Carlos', '2021-03-15', 'Cuando re-tomaremos las marchas hace mucho que no hacemos ruido y aqui', 'marchas', 'se va a caer');


--Parte 2
--Crear una nueva tabla, llamada comentarios, con los atributos id, fecha y hora de creación,
--contenido, que se relacione con la tabla posts.
CREATE TABLE comentarios
(id SERIAL,
nombre_de_usuario VARCHAR(25),
fecha_de_creacion DATE,
contenido VARCHAR,
descripcion VARCHAR);


