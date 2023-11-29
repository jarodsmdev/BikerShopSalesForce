/**
 * Author:  Leonel Briones Palacios
 * Created: Nov 28, 2023
 */
 
 /*
 La tienda Baldwin desea hacer una campaña de advertising con la empresa Yahoo. Para esto, se requiere un listado de los clientes que tienen correo Yahoo y que no registran número de teléfono, ordenado por apellido y nombre.
 */
 
 SELECT
	*
 FROM
	customers
 WHERE 
	email LIKE '%@yahoo.%'
    AND
    phone is NULL
 ORDER BY
	last_name,
    first_name
 ;