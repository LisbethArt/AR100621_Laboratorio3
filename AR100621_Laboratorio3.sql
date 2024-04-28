CREATE DATABASE Laboratorio3;

USE Laboratorio3;

CREATE TABLE autores(
idAutor INT PRIMARY KEY IDENTITY NOT NULL,
nombre VARCHAR(20),
apellido VARCHAR(20),
nacionalidad VARCHAR(20));

CREATE TABLE libros(
codigoLibro INT PRIMARY KEY IDENTITY NOT NULL,
titulo VARCHAR(40),
isbn VARCHAR(20),
anioEdicion VARCHAR(4),
editorial VARCHAR(30),
idAutor INT,
descripcion VARCHAR(150),
FOREIGN KEY (idAutor) REFERENCES autores(idAutor));

INSERT INTO autores(nombre, apellido, nacionalidad) VALUES
('Julio', 'Martínez', 'Salvadoreño'),
('Lidia', 'Guandique', 'Salvadoreña'),
('Daniel', 'Argueta', 'Alemana'),
('Beatriz', 'Rivera', 'Estadounidense'),
('Meredith', 'García', 'Estadounidense');

INSERT INTO libros(titulo, isbn, anioEdicion, editorial, idAutor, descripcion) VALUES
('El principito', '978-3-16-148410-0', '1943', 'Santos Libros', 1, 'Una historia encantadora sobre un pequeño príncipe y su viaje por el universo.'),
('Cien años de soledad', '978-84-376-0494-7', '1967', 'Magia Editorial', 2, 'Una obra maestra del realismo mágico que narra la historia de varias generaciones de la familia Buendía en Macondo.'),
('El Señor de los Anillos', '978-84-450-7106-8', '1954', 'Tierra Media Ediciones', 3, 'Una trilogía épica que sigue las aventuras de Frodo Bolsón y su misión para destruir el Anillo Único.'),
('Harry Potter y la piedra filosofal', '978-84-9838-335-4', '1997', 'Hogwarts Press', 4, 'El primer libro de la famosa serie de Harry Potter, que narra la historia del joven mago Harry y su viaje a Hogwarts.'),
('1984', '978-84-376-0971-3', '1949', 'Totalitarismo Ediciones', 4, 'Una distopía clásica que describe un futuro sombrío en el que el gobierno controla todos los aspectos de la vida de las personas.');

SELECT l.codigoLibro, l.titulo, l.isbn, l.anioEdicion, l.editorial, 
a.nombre AS 'Nombre autor', a.apellido AS 'Apellido autor', 
a.nacionalidad AS 'Nacionalidad autor', l.descripcion
FROM libros AS l
JOIN autores AS a ON l.idAutor = a.idAutor;