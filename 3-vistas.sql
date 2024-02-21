USE biblioteca;

-- Vista con JOIN y WHERE: muestra los libros prestados y los usuarios que los han solicitado, pero solo los préstamos con fecha de devolución posterior al 25 de enero de 2024.
CREATE OR REPLACE VIEW vista_join AS
SELECT l.nombre AS nombre_libro, u.nombre AS nombre_usuario
FROM prestamo p
JOIN libro l ON p.idLibro = l.idLibro
JOIN usuario u ON p.usuario_id = u.id_Usuario
WHERE p.fecha_devolucion > '2024-01-25';

-- Vista con GROUP BY y HAVING: muestra la cantidad de préstamos agrupados por género de libro, pero solo para los géneros con más de un préstamo.
CREATE OR REPLACE VIEW  vista_group AS
SELECT l.genero, COUNT(*) AS cantidad_prestamos
FROM prestamo p
JOIN libro l ON p.idLibro = l.idLibro
GROUP BY l.genero
HAVING COUNT(*) > 1;

-- Vista con LIMIT: muestra los primeros 5 registros de la tabla libro.
CREATE OR REPLACE VIEW  vista_limit AS
SELECT *
FROM libro
LIMIT 5;

-- Vista con ORDER BY: muestra todos los registros de la tabla usuario, ordenados alfabéticamente por apellido.
CREATE OR REPLACE VIEW  vista_order AS
SELECT *
FROM usuario
ORDER BY apellido ASC;

-- Vista combinada: muestra los libros prestados y los usuarios que los han solicitado, pero solo los préstamos con fecha de devolución posterior al 25 de enero de 2024, ordenados alfabéticamente por nombre de libro y limitados a 10 resultados.
CREATE OR REPLACE VIEW  vista_combinada AS
SELECT l.nombre AS nombre_libro, u.nombre AS nombre_usuario
FROM prestamo p
JOIN libro l ON p.idLibro = l.idLibro
JOIN usuario u ON p.usuario_id = u.id_Usuario
WHERE p.fecha_devolucion > '2024-01-25'
ORDER BY l.nombre ASC
LIMIT 10;
