# Consultas en SQL

> podemos relizar consultas a:

1. Sever
2. Base de datos
3. Tablas
4. Vistas

## Consultas a Server

    -- listar todas las bases de un server  
    SHOW DATABASES;  

    -- ver cuál es la base de datos activa  
    SELECT DATABASE();  

## Consultas a Base de Datos  

    -- listar todas las tablas de una base de datos  
    SHOW TABLES;  

## Consultas a Tablas  

    -- ver la estructura de una tabla  
    DESCRIBE tabla;  

    -- listar todos los registros de una tabla  
    SELECT * FROM tabla;  
    SELECT * FROM clientes;  
    SELECT * FROM proveedores;  

> Cuándo queremos obtener datos de una tabla vamos a utilizar la palabra **SELECT** acompañada de la palabra **FROM**

> En algunos casos voy a querer traer registros que estén en solamente algunas columnas de una tabla
> Para lograrlo vamos a cambiar el símbolo de * (asterisko) por un listado de las columnas que queremos obtener (separadas por comas)

    SELECT razonSocial, telefono  
      FROM proveedores;    

    SELECT apellido, nombre, email  
      FROM clientes;  
