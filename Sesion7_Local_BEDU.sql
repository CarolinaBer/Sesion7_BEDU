-- Sesión 7
CREATE DATABASE CarolinaBer_BEDU;
-- DROP DATABASE name; para borrar la BD
-- Es mejor tener esta consulta como seguro 
CREATE DATABASE IF NOT EXISTS CarolinaBer_BEDU;
-- DROP DATABASE IF EXISTS name;

USE CarolinaBer_BEDU;
CREATE TABLE IF NOT EXISTS users(
id INT PRIMARY KEY,
genero CHAR(1),
edad INT,
ocupacion INT,
cp VARCHAR(20)
);
DROP TABLE IF EXISTS users;
CREATE TABLE IF NOT EXISTS users(
id_usuario INT PRIMARY KEY,
genero CHAR(1),
edad INT,
ocupacion INT,
cp VARCHAR(20)
);
-- DROP TABLE IF EXISTS movies;
CREATE TABLE IF NOT EXISTS movies(
id_pelicula INT PRIMARY KEY,
titulo VARCHAR(90),
generos VARCHAR(90)
);
-- ratings es una tabla pivote, relación muchos a muchos 
CREATE TABLE IF NOT EXISTS ratings(
   id_rating INT PRIMARY KEY AUTO_INCREMENT,
   id_usuario INT, 
   id_pelicula INT, 
   rating INT, 
   fecha  BIGINT,
   FOREIGN KEY (id_usuario) REFERENCES users(id_usuario),
   FOREIGN KEY (id_pelicula) REFERENCES movies(id_pelicula)
);
 -- DROP TABLE IF EXISTS ratings;
 SELECT * FROM users;
 SELECT * FROM movies;
 SELECT * FROM ratings;
 
 