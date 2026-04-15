# listado base
SELECT  hotel, empleado, sector
FROM hoteles
JOIN empleados
  ON hoteles.idHotel = empleados.idHotel;

-- hoteles no tienen 'mantenimiento'
SELECT  hotel, empleado, sector
FROM hoteles
 JOIN empleados
  ON hoteles.idHotel = empleados.idHotel
WHERE sector != 'mantenimiento';

-- empleados que no tienen htel asignado
SELECT hotel, empleado, sector
FROM hoteles AS h
     RIGHT JOIN empleados AS e
        ON h.idHotel = e.idHotel;
