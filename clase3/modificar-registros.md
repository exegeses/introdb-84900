# Modificación de registros en SQL
> Para modificar los datos de una tabla utilizamos el comando **UPDATE**
> Debemos especificar mediante un filtro que registro queremos modificar

> Sintaxis:

    UPDATE nombreTabla  
        SET  
            nombreCampo = valor,  
            nombreCampo2 = valor2  
      WHERE  
            columnaPrimarykey = valorID;
            

> Ejemplo:

    UPDATE clientes  
      SET  
            telefono = '1144455568',  
            email  = 'carlos.lopez@gmail.com'  
      WHERE  
            idCliente = 9;  
        
