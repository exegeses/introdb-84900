# Chequear estado de servidor MySQL

> 💡 Esta pequeña nota nos va explicar cómo chequear si nuestro servidor de MySQL él está funcionando o está detenido
> Una vez que sepamos esto podremos tomar la decisión de detenerlo, iniciarlo o reiniciarlo cuando necesitemos

## Windows

> Puedes chequear que el servidor de base de datos está funcionando en Windows debemos utilizar el administrador de archivos

1. Pulsar la combinación de teclas WIN + R
2. Esto abrirá la ventana "ejecutar"
3. Vamos a escribir "services.msc" y pulsar "OK"
4. Abrirá la ventana del administrador de servicios
5. Buscamos el servicio llamado MySQL80
6. La columna Estado verificamos que este "en ejecución"

## macOS

1. ir a configuración de sistema
2. El panel de la izquierda ir hacia abajo de todo
3. Y encontramos el servicio de MySQL
4. En el panel central tenemos las opciones para iniciar o detener

## Debian

> para iniciar el servidor de base de datos de MySQL en debian
> puedo utilizar una terminal de comandos

1. Abrir la Terminal
2. Ejecutar el siguiente comando:

   systemctl start mysql

> para detener el servicio, ejecutar:

    systemctl stop mysql

> para verificar el estado del servicio, ejecutar

    systemctl status mysql

