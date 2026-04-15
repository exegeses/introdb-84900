# consultas a través de una tabla pivote
SELECT producto, razonSocial, telefono
FROM productos AS prd
JOIN productos_proveedores AS pp
  ON prd.idProducto = pp.idProducto
JOIN proveedores AS pv
  ON pp.idProveedor = pv.idProveedor;

-- obtener los proveedores del producto 16 ('Philips Hue Starter Kit')
SELECT producto, razonSocial, telefono
FROM productos AS prd
 JOIN productos_proveedores AS pp
  ON prd.idProducto = pp.idProducto
 JOIN proveedores AS pv
  ON pp.idProveedor = pv.idProveedor
WHERE prd.idProducto = 16;

##
SELECT titulo, nombre
FROM libros AS l
JOIN libros_autores AS la
  ON l.idLibro = la.idLibro
JOIN autores AS a
  ON la.idAutor = a.idAutor;

/* obtener título y año de publicación
    de los libros del autor
    Stanislav Lem or Terry Pratchett
*/
SELECT titulo, anio, nombre
FROM autores AS a
 JOIN libros_autores AS la
      ON a.idAutor = la.idAutor
 JOIN libros AS l
      ON la.idLibro = l.idLibro
WHERE a.idAutor IN(2,3);

SELECT titulo, anio, nombre
FROM autores AS a
     JOIN libros_autores AS la
      ON a.idAutor = la.idAutor
     JOIN libros AS l
      ON la.idLibro = l.idLibro
WHERE nombre IN('Stanislav Lem','Terry Pratchett');

SELECT titulo, anio, nombre
FROM autores AS a
 JOIN libros_autores AS la
  ON a.idAutor = la.idAutor
 JOIN libros AS l
  ON la.idLibro = l.idLibro
WHERE nombre = 'Stanislav Lem'
   OR  nombre = 'Terry Pratchett';


