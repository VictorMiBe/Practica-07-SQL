SELECT *
FROM producto, fabricante
WHERE precio >= ALL(SELECT AVG(precio)
					FROM producto, fabricante
					WHERE producto.codigo_fabricante=fabricante.codigo
                    GROUP BY fabricante.nombre)
GROUP BY fabricante.nombre