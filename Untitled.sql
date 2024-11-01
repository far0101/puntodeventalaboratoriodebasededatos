CREATE TABLE `Productos` (
  `id` bigint PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `stock` bigint NOT NULL
);

CREATE TABLE `Clientes` (
  `id` bigint PRIMARY KEY AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `gmail` varchar(255) UNIQUE,
  `contraseña` varchar(255),
  `rol` varchar(255)
);

CREATE TABLE `Ventas` (
  `id` bigint PRIMARY KEY AUTO_INCREMENT,
  `id_cliente` bigint,
  `fecha` datetime NOT NULL,
  `total` decimal(10,2) NOT NULL
);

CREATE TABLE `Detalles_Ventas` (
  `id` bigint PRIMARY KEY AUTO_INCREMENT,
  `precio` decimal(10,2) NOT NULL
);

CREATE TABLE `productos_ventas` (
  `id` bigint PRIMARY KEY AUTO_INCREMENT,
  `id_venta` bigint,
  `id_producto` bigint,
  `cantidad_producto` varchar(255)
);

ALTER TABLE `Ventas` ADD FOREIGN KEY (`id`) REFERENCES `productos_ventas` (`id_venta`);

ALTER TABLE `Ventas` ADD FOREIGN KEY (`id_cliente`) REFERENCES `Clientes` (`id`);

ALTER TABLE `productos_ventas` ADD FOREIGN KEY (`id_producto`) REFERENCES `Productos` (`id`);
