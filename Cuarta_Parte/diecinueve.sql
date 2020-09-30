SELECT nombre, Maximo, Minimo, Media, cantidad
FROM fabricante JOIN (
	SELECT codigo_fabricante, MAX(precio) Maximo, MIN(precio) Minimo, 
    AVG(precio) Media,COUNT(*) cantidad 
    FROM producto
	WHERE precio >=200 
    GROUP BY codigo_fabricante
	) nuevatabla
ON fabricante.codigo = nuevatabla.codigo_fabricante