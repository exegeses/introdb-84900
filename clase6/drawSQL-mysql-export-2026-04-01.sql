CREATE TABLE `proveedores`(
    `idProveedor` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `razonSocial` VARCHAR(100) NOT NULL,
    `cuit` VARCHAR(15) NOT NULL,
    `telefono` VARCHAR(25) NOT NULL,
    `email` VARCHAR(50) NOT NULL,
    `direccion` VARCHAR(200) NOT NULL
);
ALTER TABLE
    `proveedores` ADD UNIQUE `proveedores_cuit_unique`(`cuit`);


CREATE TABLE `marcas`(
    `idMarca` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `marca` VARCHAR(50) NOT NULL
);
ALTER TABLE
    `marcas` ADD UNIQUE `marcas_marca_unique`(`marca`);

CREATE TABLE `categorias`(
    `idCategoria` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `categoria` VARCHAR(50) NOT NULL
);
ALTER TABLE
    `categorias` ADD UNIQUE `categorias_categoria_unique`(`categoria`);


CREATE TABLE `productos`(
    `idProducto` MEDIUMINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `producto` VARCHAR(50) NOT NULL,
    `precio` DECIMAL(10, 2) NOT NULL,
    `idMarca` SMALLINT UNSIGNED NOT NULL,
    `idCategoria` SMALLINT UNSIGNED NOT NULL,
    `descripcion` VARCHAR(1000) NOT NULL,
    `imagen` VARCHAR(255) NOT NULL DEFAULT 'no-disponible.svg',
    `activo` BOOLEAN NOT NULL DEFAULT  1
);
ALTER TABLE
    `productos` ADD UNIQUE `productos_producto_unique`(`producto`);
ALTER TABLE
    `productos` ADD CONSTRAINT `productos_idcategoria_foreign`
     FOREIGN KEY(`idCategoria`) REFERENCES `categorias`(`idCategoria`);
ALTER TABLE
    `productos` ADD CONSTRAINT `productos_idmarca_foreign`
     FOREIGN KEY(`idMarca`) REFERENCES `marcas`(`idMarca`);