# consultas con relaciones entre tablas
> vamos a necesitar obtener datos provenientes de dos o más columnas
> para lograrlo tenemos dos técnicas

1. Table Relations
2. Joins

## Table Relations
> para lograr esta técnica debemos mencionar en el listado de tablas (después del **FROM**) todas las tablas necesarias separadas por comas
> Y luego mediante un filtro (**WHERE**) igualamos la clave foránea de la primera tabla con la clave primaria de la segunda tabla

    SELECT campoTabla1, campoTabla1, campoTabla2  
      FROM tabla1, tabla2  
      WHERE tabla1.claveForanea = tabla2.clavePrimaria;  

> Ejemplo práctico:  

    SELECT producto, precio, marca  
      FROM productos, marcas  
      WHERE productos.idMarca = marcas.idMarca;  
