/**
 * Author:  Leonel Briones Palacios
 * Created: Nov 28, 2023
 */
 
 /*
 se requiere un reporte que muestre el monto total vendido por cada vendedor de la tienda Baldwin Bikes. Tenga presente que para calcular el monto de una orden debe multiplicar la cantidad del ítem solicitado por el precio (no considere los descuentos).
 */
 
 SELECT
	staffs.last_name,
    staffs.first_name,
    SUM(order_items.list_price * order_items.quantity) AS MONTO
FROM
	staffs
INNER JOIN
	orders ON orders.staff_id = staffs.staff_id
INNER JOIN
	stores ON staffs.store_id = stores.store_id
INNER JOIN
	order_items ON orders.order_id = order_items.order_id
WHERE
	stores.store_name = 'Baldwin Bikes'
GROUP BY
	staffs.last_name, staffs.first_name
ORDER BY
	MONTO DESC
;