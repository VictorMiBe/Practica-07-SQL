DROP DATABASE IF EXISTS tienda;
CREATE DATABASE tienda CHARACTER SET utf8mb4;
USE tienda; 

CREATE TABLE fabricante (
  codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE producto (
  codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  precio DOUBLE NOT NULL,
  codigo_fabricante INT UNSIGNED NOT NULL,
  FOREIGN KEY (codigo_fabricante) REFERENCES fabricante(codigo)
);

INSERT INTO fabricante(nombre) VALUES ('Asus'), ('Lenovo'), ('Hewlett-Packard'), ('Samsung'), ('Seagate'), ('Crucial'), ('Gigabyte'), ('Huawei'), ('Xiaomi');

INSERT INTO producto(nombre, precio, codigo_fabricante) VALUES ('Disco Duro SATA3 1TB', 86.99, 5), ('Memoria RAM DDR4 8GB', 120, 6), ('Disco SSD 1 TB', 150.99, 4), ('GeForce GTX 1050 Ti', 185, 7), ('GeForce GTX 1080 Xtreme', 755, 6), ('Monitor 24 LED Full HD', 202, 1), ('Monitor 27 LED Full HD', 245.99, 1), ('Portátil Yoga 520', 559, 2), ('Portátil Ideapad 320', 444, 2), ('Impresora HP Deskjet 3720', 59.99, 3), ('Impresora HP Laserjet Pro M26nw', 180, 3);


