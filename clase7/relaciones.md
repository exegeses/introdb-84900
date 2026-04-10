# Consultas con relaciones entre tablas
> Vamos a necesitar obtener datos provenientes de dos o más columnas
> para lograrlo tenemos dos técnicas

1. Table Relations
2. Joins

## Table Relations
> Para lograr esta técnica debemos mencionar en el listado de tablas (después del **FROM**) todas las tablas necesarias separadas por comas
> Y luego mediante un filtro (**WHERE**) igualamos la clave foránea de la primera tabla con la clave primaria de la segunda tabla

    SELECT campoTabla1, campoTabla1, campoTabla2  
      FROM tabla1, tabla2  
      WHERE tabla1.claveForanea = tabla2.clavePrimaria;  

    SELECT campoTabla1, campoTabla1, campoTabla2, campoTabla3  
      FROM tabla1, tabla2, tabla3    
      WHERE tabla1.claveForanea = tabla2.clavePrimaria  
        AND tabla1.claveForanea = tabla3.claveForanea;      

> Ejemplo práctico:  

    SELECT producto, precio, marca  
      FROM productos, marcas  
      WHERE productos.idMarca = marcas.idMarca;  

    SELECT producto, precio, categoria  
      FROM productos, categorias
      WHERE productos.idCategoria = categorias.idCategoria; 

    SELECT titulo, genero, anio    
      FROM generos, libros  
      WHERE libros.idGenero = generos.idGenero;  

    SELECT producto, precio, marca, categoria  
      FROM productos, marcas, categorias  
      WHERE productos.idCategoria = categorias.idCategoria  
        AND productos.idMarca = marcas.idMarca;  

    SELECT titulo, genero, editorial, anio  
      FROM libros, generos, editoriales  
      WHERE libros.idGenero = generos.idGenero  
        AND libros.idEditorial = editoriales.idEditorial;  


## Joins
> Para lograr esta técnica debemos mencionar después del From únicamente una tabla (sólo mencionamos la tabla principal)
> Luego mediante la palabra reservada **JOIN** mencionamos la segunda tabla
> Finalmente utilizamos la palabra reservada On para igualar la clave foránea de la tabla principal con la clave primaria de la segunda tabla
> [!NOTE] podríamos decir que cada **JOIN** tiene su propio **ON**

    SELECT campoTabla1, campoTabla1, campoTabla2   
      FROM tabla1
      JOIN tabla2
        ON tabla1.claveForanea = tabla2.clavePrimaria;
      
    SELECT campoTabla1, campoTabla1, campoTabla2, campoTabla3   
      FROM tabla1
      JOIN tabla2
        ON tabla1.claveForanea = tabla2.clavePrimaria
      JOIN tabla3
        ON tabla1.claveForanea = tabla3.clavePrimaria
      
> Ejemplo práctico:

    SELECT producto, precio, marca  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca;  

    SELECT producto, precio, categoria  
      FROM productos  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria;  

    SELECT producto, precio, marca, categoria  
      FROM productos  
      JOIN marcas  
        ON productos.idMarca = marcas.idMarca  
      JOIN categorias  
        ON productos.idCategoria = categorias.idCategoria;  

    SELECT titulo, genero, editorial, anio  
      FROM libros  
      JOIN generos  
        ON libros.idGenero = generos.idGenero  
      JOIN editoriales  
        ON libros.idEditorial = editoriales.idEditorial;  

