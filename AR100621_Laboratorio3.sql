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
('Julio', 'Mart�nez', 'Salvadore�o'),
('Lidia', 'Guandique', 'Salvadore�a'),
('Daniel', 'Argueta', 'Alemana'),
('Beatriz', 'Rivera', 'Estadounidense'),
('Meredith', 'Garc�a', 'Estadounidense');

INSERT INTO libros(titulo, isbn, anioEdicion, editorial, idAutor, descripcion) VALUES
('El principito', '978-3-16-148410-0', '1943', 'Santos Libros', 1, 'Una historia encantadora sobre un peque�o pr�ncipe y su viaje por el universo.'),
('Cien a�os de soledad', '978-84-376-0494-7', '1967', 'Magia Editorial', 2, 'Una obra maestra del realismo m�gico que narra la historia de varias generaciones de la familia Buend�a en Macondo.'),
('El Se�or de los Anillos', '978-84-450-7106-8', '1954', 'Tierra Media Ediciones', 3, 'Una trilog�a �pica que sigue las aventuras de Frodo Bols�n y su misi�n para destruir el Anillo �nico.'),
('Harry Potter y la piedra filosofal', '978-84-9838-335-4', '1997', 'Hogwarts Press', 4, 'El primer libro de la famosa serie de Harry Potter, que narra la historia del joven mago Harry y su viaje a Hogwarts.'),
('1984', '978-84-376-0971-3', '1949', 'Totalitarismo Ediciones', 4, 'Una distop�a cl�sica que describe un futuro sombr�o en el que el gobierno controla todos los aspectos de la vida de las personas.');

SELECT l.codigoLibro, l.titulo, l.isbn, l.anioEdicion, l.editorial, 
a.nombre AS 'Nombre autor', a.apellido AS 'Apellido autor', 
a.nacionalidad AS 'Nacionalidad autor', l.descripcion
FROM libros AS l
JOIN autores AS a ON l.idAutor = a.idAutor;