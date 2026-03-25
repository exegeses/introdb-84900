-- creación de tabla proveedores
CREATE TABLE proveedores
(
    idProveedor tinyint unsigned primary key auto_increment,
    razonSocial varchar(100) not null,
    cuit varchar(15) unique not null,
    telefono varchar(25) not null,
    email varchar(50) not null,
    direccion varchar(200) not null
);
