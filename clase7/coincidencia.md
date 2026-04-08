# consultas de coincidencia

> en algunos casos vamos a querer obtener registros que utilicen una palabra o parte de una palabra como filtro
> por ejemplo queremos obtener todos los registros que contengan la palabra "inalámbrico" dentro de un campo

    SELECT producto, precio, descripcion  
      FROM productos  
      WHERE descripcion = 'inalámbrico';  

> esta consulta no trae resultados porque está buscando que en la columna descripción diga únicamente "inalámbrico"
 
> para lograr obtener este listado vamos a reemplazar el símbolo de igual por la palabra reservada **LIKE**
> acompañado del símbolo de **%** (porcentaje) que va a funcionar como una especie de comodín que puede reemplazar uno, varios o incluso ningún carácter.

    SELECT producto, precio, descripcion  
      FROM productos  
      WHERE descripcion LIKE '%inalambrico%';  
