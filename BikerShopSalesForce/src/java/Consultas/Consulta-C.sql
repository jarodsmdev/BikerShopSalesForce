/**
 * Author:  Leonel Briones Palacios
 * Created: Nov 28, 2023
 */
 
 /*
 Se requiere un reporte con la cantidad de órdenes totales de cada tienda, ordenado de mayor a menor cantidad.
 */
 
SELECT
	stores.store_name,
    COUNT(*) AS Conteo
FROM
	stores
INNER JOIN orders
ON stores.store_id = orders.store_id
GROUP BY
	stores.store_name
ORDER BY
	Conteo DESC
 ;