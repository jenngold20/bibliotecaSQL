USE biblioteca;

-- SP de ordenamiento

DELIMITER $$

CREATE PROCEDURE sp_OrdenarTabla(
    IN nombreTabla VARCHAR(100),
    IN campoOrdenamiento VARCHAR(100),
    IN orden VARCHAR(10)
)
BEGIN
    SET @query = CONCAT('SELECT * FROM ', nombreTabla, ' ORDER BY ', campoOrdenamiento, ' ', orden);
    PREPARE stmt FROM @query;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END $$

DELIMITER ;


-- Prueba de mi SP de ordenamiento
CALL sp_OrdenarTabla('libro', 'nombre', 'ASC');


-- SP de insercion en la tabla Libro

DELIMITER $$

CREATE PROCEDURE sp_InsertarLibro(
    IN p_nombre VARCHAR(100),
    IN p_genero VARCHAR(50),
    IN p_editorial VARCHAR(50)
)
BEGIN
    INSERT INTO libro (nombre, genero, editorial)
    VALUES (p_nombre, p_genero, p_editorial);
END $$

DELIMITER ;


-- Prueba de mi SP de inserción
CALL sp_InsertarLibro('Cazadores de fantasmas', 'Terror', 'Obelisco Ediciones');

