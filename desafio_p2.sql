-- 1. Crear tabla Comentarios (id, fecha, hora, contenido)
CREATE TABLE comentarios (
    id INT,
    fecha DATE,
    hora TIME,
    contenido VARCHAR(200),

    FOREIGN KEY (id) REFERENCES post(id)
);

-- 2. Crear Comentarios, Pamela 2 y Carlos 2
INSERT INTO comentarios (id, fecha, hora, contenido)
VALUES (1, TO_DATE('20/08/2021', 'DD/MM/YYYY'), '14:00', 'Gran canción de Toto del 88');

INSERT INTO comentarios (id, fecha, hora, contenido)
VALUES (2, TO_DATE('22/08/2021', 'DD/MM/YYYY'), '09:33', 'Me la dedicaron una vez aunque no me llamo Pamela');

INSERT INTO comentarios (id, fecha, hora, contenido)
VALUES (6, TO_DATE('21/08/2021', 'DD/MM/YYYY'), '19:31', 'Rock Clásico del más grande');

INSERT INTO comentarios (id, fecha, hora, contenido)
VALUES (6, TO_DATE('21/08/2021', 'DD/MM/YYYY'), '23:17', 'van a desaparecer...');

INSERT INTO comentarios (id, fecha, hora, contenido)
VALUES (6, TO_DATE('22/08/2021', 'DD/MM/YYYY'), '02:48', 'grande Charly!');

INSERT INTO comentarios (id, fecha, hora, contenido)
VALUES (6, TO_DATE('22/08/2021', 'DD/MM/YYYY'), '11:11', 'temazo del gran Charly, gran crpitica a las dictaduras latinamericanas que aún persisten');

-- 4. Crear un post para Margarita
INSERT INTO post (usuario, fecha_creacion, contenido, descripcion, titulo) 
VALUES ('Margarita', TO_DATE('22/08/2021', 'DD/MM/YYYY'),
'Margarita es una lágrima
que un querubín derramó
y al caer en hondo pielago
en perla se convirtió', 'La Perla del Caribe', 'La lágrima - Inocente Carreño');

-- 5. Crear 5 comentarios para el post de Margarita
INSERT INTO comentarios (id, fecha, hora, contenido)
VALUES (7, TO_DATE('22/08/2021', 'DD/MM/YYYY'), '11:45', 'me gusta este tema');

INSERT INTO comentarios (id, fecha, hora, contenido)
VALUES (7, TO_DATE('22/08/2021', 'DD/MM/YYYY'), '11:46', 'un clásico oriental, una hermosa balada');

INSERT INTO comentarios (id, fecha, hora, contenido)
VALUES (7, TO_DATE('22/08/2021', 'DD/MM/YYYY'), '12:41', 'Aprendí a tocar cuatro para poder cantar este tema');

INSERT INTO comentarios (id, fecha, hora, contenido)
VALUES (7, TO_DATE('22/08/2021', 'DD/MM/YYYY'), '18:25', 'una vez se la oí a Gualberto Ibarreto y la orquesta Sinfónica de Venezuela, la mejor interpretación');

INSERT INTO comentarios (id, fecha, hora, contenido)
VALUES (7, TO_DATE('22/08/2021', 'DD/MM/YYYY'), '21:03', 'también me gusta');

select * from comentarios;





