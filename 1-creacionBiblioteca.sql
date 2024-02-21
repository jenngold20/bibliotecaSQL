-- Creación de la base de datos

CREATE DATABASE IF NOT EXISTS biblioteca;

-- Uso la base de datos 

USE biblioteca;

-- Creación de la tabla libro --
CREATE TABLE IF NOT EXISTS libro (
    idLibro INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    genero VARCHAR(50),
    editorial VARCHAR(50),
    fechaPublicacion DATE,
    precio DECIMAL(10,2)
);

-- Creación de la tabla Préstamo --

CREATE TABLE IF NOT EXISTS prestamo (
    idPrestamo INT PRIMARY KEY AUTO_INCREMENT,
    fecha_prestamo DATE,
    fecha_devolucion DATE,
    idLibro INT,
    FOREIGN KEY (idLibro) REFERENCES libro(idLibro)
);

-- Creación de la tabla usuario --
CREATE TABLE IF NOT EXISTS usuario (
    id_Usuario INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    email VARCHAR(100),
    telefono VARCHAR(15)
);

-- Modificación de la tabla prestamo para agregar la referencia a la tabla usuario --
ALTER TABLE prestamo
ADD COLUMN usuario_id INT,
ADD FOREIGN KEY (usuario_id) REFERENCES usuario(id_Usuario);
