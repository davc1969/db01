-- 1. Crear base de datos llamada Posts
CREATE DATABASE Posts;

-- 2. Crear tabla post (id, usuario, fecha, contenido, descripcion)
CREATE TABLE post (
    id SERIAL,
    usuario VARCHAR(60),
    fecha_creacion DATE,
    contenido VARCHAR(200),
    descripcion VARCHAR(50),
    PRIMARY KEY (id)
);

-- 3. Insertar posts (2 para Pamela, 1 para Carlos)
INSERT INTO post (usuario, fecha_creacion, contenido, descripcion) 
VALUES ('Pamela', TO_DATE('20/08/2021', 'DD/MM/YYYY'),
'Side by side, I ll be yours forever
Rain or shine, any kind of weather
There isn t anything I wouldn t do for you
Let s take what s getting old and make it new', 'First verse of song Pamela by Toto');

INSERT INTO post (usuario, fecha_creacion, contenido, descripcion) 
VALUES ('Pamela', TO_DATE('21/08/2021', 'DD/MM/YYYY'),
'Pamela, don t break this heart of mine
Just remember, it may not heal this time
Pamela, there is no second chance, for the one who leaves it all behind, yeah yeah', 'Chorus of song Pamela by Toto');

INSERT INTO post (usuario, fecha_creacion, contenido, descripcion) 
VALUES ('Carlos', TO_DATE('21/08/2021', 'DD/MM/YYYY'),
'Que no es lo mismo
Dicen en el espejo
Que te siento lejos
Que muero por dentro
Y escucho en silencio
Que la lluvia dice
Que ya te perdí', 'Voy a olvidarme de mi - Carlos Vives');

-- 4. Modificar tabla post, agregar titulo
ALTER TABLE post add titulo VARCHAR(50);

-- 5. Agregar Titulo a las publicaciones previas
UPDATE post 
SET titulo = 'Toto song 1' 
WHERE usuario = 'Pamela' AND descripcion = 'First verse of song Pamela by Toto';

UPDATE post 
SET titulo = 'Toto song 2' 
WHERE usuario = 'Pamela' AND descripcion = 'Chorus of song Pamela by Toto';

UPDATE post 
SET titulo = 'Carlos Vives song' 
WHERE usuario = 'Carlos';

-- 6. Insertar posts para usuario Pedro
INSERT INTO post (usuario, fecha_creacion, contenido, descripcion, titulo) 
VALUES ('Pedro', TO_DATE('22/08/2021', 'DD/MM/YYYY'),
'Al mar eché un poema
Que llevó con él mis preguntas y mi voz
Como un lento, barco se perdió en la espuma', 'Primer verso de El sueño del retorno', 'Canción de Pedro Aznar 1');

INSERT INTO post (usuario, fecha_creacion, contenido, descripcion, titulo) 
VALUES ('Pedro', TO_DATE('22/08/2021', 'DD/MM/YYYY'),
'Le pedí que no diera la vuelta
Sin haber visto el alta mar
Y en sueños, hablar conmigo de lo que vio', 'Segundo verso de El sueño del retorno', 'Canción de Pedro Aznar 2');

-- 7. Eliminar el post de Carlos
DELETE FROM post WHERE usuario = 'Carlos';

-- 8. Ingresar un nuevo post para usuario Carlos
INSERT INTO post (usuario, fecha_creacion, contenido, descripcion, titulo) 
VALUES ('Carlos', TO_DATE('21/08/2021', 'DD/MM/YYYY'),
'Los amigos del barrio pueden desaparecer
Los cantores de radio pueden desaparecer
Los que están en los diarios pueden desaparecer
La persona que amas puede desaparecer', 'Los Dinosaurios', 'Canción de Charly García');

SELECT * FROM post;





