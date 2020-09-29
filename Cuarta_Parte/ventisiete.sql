SELECT nombre, coalesce(cantidad,0) as total
FROM fabricante LEFT JOIN (
	SELECT codigo_fabricante, precio, COUNT(*) cantidad 
    FROM producto
	WHERE precio >=220 
    GROUP BY codigo_fabricante
	) nuevatabla
ON fabricante.codigo = nuevatabla.codigo_fabricante
ORDER BY total DESC
    