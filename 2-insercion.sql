USE biblioteca;

-- Insertar datos en la tabla libro
INSERT INTO libro (nombre, genero, editorial, fechaPublicacion, precio) VALUES
    ('El señor de los anillos', 'Fantasía', 'Minotauro', '1954-07-29', 25.99),
    ('Cien años de soledad', 'Realismo mágico', 'Editorial Sudamericana', '1967-05-30', 19.99),
    ('1984', 'Ciencia ficción', 'Debolsillo', '1949-06-08', 12.99),
    ('Don Quijote de la Mancha', 'Novela', 'Anaya', '1605-01-16', 15.99),
    ('Harry Potter y la piedra filosofal', 'Fantasía', 'Salamandra', '1997-06-26', 29.99);


-- Insertar datos en la tabla usuario
INSERT INTO usuario (nombre, apellido, email, telefono) VALUES
    ('Juan', 'Pérez', 'juan@example.com', '123-456-7890'),
    ('María', 'López', 'maria@example.com', '987-654-3210'),
    ('Pedro', 'Gómez', 'pedro@example.com', '111-222-3333'),
    ('Ana', 'Martínez', 'ana@example.com', '444-555-6666'),
    ('Luis', 'Sánchez', 'luis@example.com', '777-888-9999');

-- Insertar datos en la tabla prestamo
-- Supongamos que los préstamos se realizaron el mismo día y la devolución será 7 días después
INSERT INTO prestamo (fecha_prestamo, fecha_devolucion, idLibro, usuario_id) VALUES
    ('2024-01-20', '2024-01-27', 1, 1), -- Juan prestó "El señor de los anillos"
    ('2024-01-20', '2024-01-27', 2, 2), -- María prestó "Cien años de soledad"
    ('2024-01-20', '2024-01-27', 3, 3), -- Pedro prestó "1984"
    ('2024-01-20', '2024-01-27', 4, 4), -- Ana prestó "Don Quijote de la Mancha"
    ('2024-01-20', '2024-01-27', 5, 5); -- Luis prestó "Harry Potter y la piedra filosofal"