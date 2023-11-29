/**
 * Author:  Leonel Briones Palacios
 * Created: Apr 11, 2023
 */

/*
La tienda Baldwin, que atiende la ciudad de New York, realizará una campaña de mailing. Para esto, se requiere un listado de los clientes del estado de New York (NY), ordenado alfabéticamente por apellido y después nombre.
*/

SELECT
	*
FROM
	customers
WHERE
	state = 'NY'
ORDER BY
	last_name,
    first_name
;
