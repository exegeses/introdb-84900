# Alias en SQL
/*
    Podemos renombrar el enunciado de una columna
    para que quede mejor en un reporte
    Éste renombrado no es permanente, sino que es únicamente para el reporte
    Podemos implementar un alias con la palabra reservada *AS**
    (Se puede omitir)
*/

SELECT
        producto AS Producto,
        precio AS Contado,
        precio * 1.05 AS Lista,
        marca AS Marca,
        categoria AS Categoría
FROM    productos
  JOIN  marcas
    ON  productos.idMarca = marcas.idMarca
  JOIN  categorias
    ON  productos.idCategoria = categorias.idCategoria;

/*
    También podemos implementar alias para los nombres de las columnas
    Finity caso no impacta en el reporte sino que una consecuencia es que podemos escribir un poco menos
*/

SELECT
        producto AS Producto,
        precio AS Contado,
        precio * 1.05 AS Lista,
        marca AS Marca,
        categoria AS Categoría
FROM    productos AS p
JOIN    marcas AS m
  ON  p.idMarca = m.idMarca
JOIN  categorias AS c
  ON  p.idCategoria = c.idCategoria;
