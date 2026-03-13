# Teoría clase 1
## Definición

> 💡 ¿Qué es una base de datos?
> Según una definición clásica una base de datos es un conjunto de datos -de un mismo contexto- organizados sistemáticamente

> Con la creación de sistemas informáticos se generó la necesidad de almacenar estos datos a nivel software
> ahí es cuando comenzamos a tener aplicaciones de bases de datos

> Tenemos aplicaciones sencillas que podemos usar de manera personal
> algunas son:

1. CouchDB
2. Access

> Cuando necesitamos que varios usuarios (decenas, cientos, miles) necesiten acceder para consultar y manipular estos datos, ahí vamos a necesitar un servidor de base de datos

> Tenemos servidores de base de datos de tipo relacional (que tienen álgebra relacional)
> Algunos ejemplos son:

1. Oracle  
2. MySQL  
3. IBMDB2  
4. SQL Server  
5. PostGre SQL  
6. Amazon Aurora  

> En este curso vamos a utilizar MySQL Server.
> Y utilizar este, significa que si en algún momento necesitemos migrar a Oracle o a PostGreSQL o SQL Server podamos hacerlo sin problema
> Estos utilizan como estándar el lenguaje SQL

> También tenemos servidores de base de datos de tipo NO relacional (que NO cumplen con álgebra relacional)
> Algunos ejemplos son:

1. MongoDB  
2. Redis  
3. Cassandra  
4. Amazon Dynamo  
5. Riak  
6. BigTable  

> GraphQL
> Mientras que SQL es un lenguaje para hablar con bases de datos relacionales, GraphQL es un lenguaje de consulta para APIs.
> Algo así como un "traductor" o una capa intermedia que se pone frente a los datos (ya sean SQL, NoSQL o microservicios) para que el cliente pida exactamente lo que necesita y nada más.
