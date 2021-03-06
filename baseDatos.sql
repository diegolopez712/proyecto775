CREATE DATABASE crud_2395775;

USE crud_2395775;

CREATE TABLE CATEGORIA(
    idCategoria int AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE PRODUCTO( idProducto int PRIMARY KEY, 
idCategoria int NOT NULL, nombre VARCHAR(30) UNIQUE NOT NULL, 
precio double(8,2) NOT NULL, estado int(1) NOT NULL, 
FOREIGN KEY(idCategoria) REFERENCES CATEGORIA(idCategoria) 
);

INSERT INTO CATEGORIA(nombre) VALUES('FRUTAS');
INSERT INTO CATEGORIA(nombre) VALUES('VERDURAS');

INSERT INTO PRODUCTO(idProducto,idCategoria,nombre,precio,estado) 
VALUES(1,1,'NARANJA',5000,1),(2,2,'ZANAHORIA',2000,1),(3,1,'FRESA',3000,1);


