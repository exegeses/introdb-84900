# Insertar registros en SQL
> Para insertar registros tenemos tres maneras principales

## Sintaxis usando SET

    INSERT INTO nombreTabla  
       SET  
            nombreCampo = valor,  
            nombreCampo2 = valor2,  
            nombreCampo3 = valor3,  
            nombreCampo4 = valor4;  

> Ejemplo práctico: 

    INSERT INTO clientes  
       SET  
            idCliente = 1,  
            nombre = 'Lucía',  
            apellido = 'González',  
            telefono = '1234567890',  
            email = 'lucia.gonzalez@main.com',  
            fechaAlta = '2024-05-12';  
              
    INSERT INTO clientes    
        SET  
            nombre = 'Martín',    
            apellido = 'Pérez',   
            telefono = '1139876543',  
            email = 'martin.perez@mail.con',    
            fechaAlta = '2024-06-01';   

## Sintaxis completa (se mencionan los campos)

    INSERT INTO nombreTabla  
       (nCampo, nCampo2, nCampo3, nCampoX)  
      VALUES  
       (valor, valor2, valor3, valorX);    

    INSERT INTO clientes    
       ( nombre, apellido, telefono, email, fechaAlta )   
      VALUES  
       ( 'Sofía', 'Ramírez', '1144455566', 'sofia.ramirez@mail.com', '2024-06-15' );    

## Sintaxis simplificada (NO se mencionan los campos)

    INSERT INTO nombreTabla   
      VALUES  
       (valor, valor2, valor3, valorX);  

> En la sintaxis simplificada, si bien no mencionamos los nombres de las columnas, estamos obligados a mencionar **todos y cada uno** de los valores en el orden exacto en el que fueron declarados.

    INSERT INTO clientes  
      VALUES  
        ( DEFAULT, 'Carlos', 'López', '1144455567', 'carlos.lopez@mail.com', '2024-06-20' );  

    INSERT INTO clientes  
      VALUES  
        ( DEFAULT, 'Ana', 'Martínez', '1144455568', null, '2024-06-25' );  

### insertar múltiples registros
> En algunos casos vamos a necesitar insertar varios registros en una operación.
> No es necesario generar un único **INSERT** por cada uno de los registros a agregar.
> Podemos generar un único **INSERT** para varios registros en una misma operación.


    /* sintaxis completa */  
    INSERT INTO nombreTabla  
        ( nCampo, nCampo2, nCampo3, nCampoX )  
      VALUES  
        ( valor, valor2, valor3, valorX ),    
        ( valor, valor2, valor3, valorX ),     
        ( valor, valor2, valor3, valorX );      

    /* sintaxis simplificada */  
    INSERT INTO nombreTabla  
      VALUES  
        ( DEFAULT, valor2, valor3, valorX ),   
        ( DEFAULT, valor2, valor3, valorX ),    
        ( DEFAULT, valor2, valor3, valorX );      
