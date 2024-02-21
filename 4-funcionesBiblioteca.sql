USE biblioteca;

-- Función que recibe como parámetro un número que es el id del Libro y me devuelve cuál es el nombre de la editorial

DELIMITER $$

CREATE FUNCTION obtenerNombreEditorial(Parametro INT) RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
  DECLARE nombreEditorial VARCHAR(100);
  SET nombreEditorial = (SELECT editorial FROM libro WHERE idLibro = Parametro);
  RETURN nombreEditorial;
END $$

DELIMITER ;


-- Prueba de función para obtener nombre de la editorial
SELECT obtenerNombreEditorial(2);



-- Función Promedio Precio
DELIMITER $$

CREATE FUNCTION obtenerPrecioPromedioLibros(Parametro INT) RETURNS DECIMAL(10, 2) READS SQL DATA
BEGIN
  DECLARE promedio DECIMAL(10, 2);
  SET promedio = (SELECT AVG(Precio) FROM libro WHERE YEAR(fechaPublicacion) = Parametro);
  RETURN promedio;
END $$

DELIMITER ;

-- Prueba con parámetro del año
SELECT obtenerPrecioPromedioLibros(1997);
