# Crear tablas en SQL
> para crear una tabla utilizamos el comando
**CREATE TABLE**

> Sintaxis:

    CREATE TABLE nombreTABLA
    (
        nombreCampo tipoDato [modificadores],
        nombreCampo2 tipoDato [modificadores],
        nombreCampo3 tipoDato [modificadores],
        nombreCampoX tipoDato [modificadores]
    );

> Ejemplo práctico:

    CREATE TABLE clientes
    (
        idCliente INT AUTO_INCREMENT PRIMARY KEY,  
        nombre VARCHAR(50) NOT NULL,  
        apellido VARCHAR(50) NOT NULL,  
        telefono VARCHAR(25) NOT NULL,  
        email VARCHAR(50),  
        fechaAlta DATE NOT NULL
    );

## Eliminar una tabla

    DROP TABLE nombreTabla;  
