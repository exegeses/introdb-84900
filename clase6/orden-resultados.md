# Orden de los resultados
> Cuándo tenemos una grilla de resultados, siempre vienen ordenados de manera predeterminada
> Podemos modificar el orden de los resultados con el modificador **ORDER BY** seguido del nombre de la columna

    SELECT *  
    FROM marcas  
    ORDER BY idMarca;  

    SELECT producto, precio  
    FROM productos  
    ORDER BY precio DESC;

    SELECT apellido, nombre, fechaAlta  
    FROM clientes  
    ORDER BY fechaAlta;   

    SELECT producto, precio, idMarca  
    FROM productos  
    ORDER BY idMarca, precio;  

    -- obtener un listado desordenado  
    SELECT idProducto, producto, precio  
    FROM productos  
    ORDER BY rand();  