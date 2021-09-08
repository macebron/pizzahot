-- eliminamos bbdd en caso de existir
DROP DATABASE IF EXISTS pizzahot;
-- creamos la bbdd
CREATE DATABASE pizzahot;
-- usamos la bbdd pizzahot
USE pizzahot;
-- creamos las tabla pizza en caso de no existir
DROP TABLE IF EXISTS pizzas;
CREATE TABLE pizzas(
    id int not null AUTO_INCREMENT,
    pizza VARCHAR(30) unique NOT NULL,
    precio float(4,2) not null,
    imagen VARCHAR(30) default 'default.jpg',
    PRIMARY KEY(id)
);
-- creamos las tabla ingredientes en caso de no existir
DROP TABLE IF EXISTS ingredientes;
CREATE TABLE ingredientes(
    id int not null AUTO_INCREMENT,
    ingrediente VARCHAR(30) unique NOT NULL,
    tipo enum('vegetal','carnes','pescado','lacteos','condimentos'),
    activo tinyint(1) default 1,
    PRIMARY KEY(id)
);
DROP TABLE IF EXISTS pizzasIngredientes;
CREATE TABLE pizzasIngredientes(
    id int AUTO_INCREMENT,
    id_pizza INT NOT NULL,
    id_ingrediente INT NOT NULL,
    PRIMARY KEY(id)
);
CREATE TABLE clientes(
    id int not null AUTO_INCREMENT PRIMARY kEY,
    nick    VARCHAR(30),
    email  VARCHAR (30)  
    
);
CREATE TABLE pedidos(
    id int not null AUTO_INCREMENT PRIMARY kEY,
    id_cliente int  not null,
    fecha_pedido timestamp 
  -- precio_pedido

);
CREATE TABLE detallesPedido(
    id int AUTO_INCREMENT PRIMARY kEY,
    id_pedido int not null,
    id_pizza int not null,
    cantidad int(2) unsigned 
);



