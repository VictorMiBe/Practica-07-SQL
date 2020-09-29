SELECT nombre
FROM fabricante
WHERE codigo NOT IN(SELECT codigo_fabricante
					FROM producto
					WHERE producto.codigo_fabricante=fabricante.codigo)