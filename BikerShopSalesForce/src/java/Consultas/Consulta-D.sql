/**
 * Author:  Leonel Briones Palacios
 * Created: Nov 28, 2023
 */
 
 /*
 Como se puede observar, la tienda Baldwin es la que tiene mayor cantidad de órdenes. Se requiere un reporte con los vendedores de la tienda Baldwin Bikes y la cantidad de órdenes asociada a cada uno, ordenado descendentemente por cantidad.
 */
 
SELECT
    staffs.last_name,
    staffs.first_name,
    COUNT(*)
FROM
    staffs
INNER JOIN
    orders ON staffs.staff_id = orders.staff_id
INNER JOIN
    stores ON orders.store_id = stores.store_id
WHERE
    stores.store_name = 'Baldwin Bikes'
GROUP BY
    staffs.last_name, staffs.first_name;
