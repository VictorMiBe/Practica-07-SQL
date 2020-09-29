SELECT coalesce(nuevatabla.nombre,'-') Nom_pro, coalesce(Maximo,'-') Precio,fabricante.nombre Nom_Fab
FROM fabricante LEFT JOIN (
	SELECT codigo_fabricante, nombre ,MAX(precio) Maximo
    FROM producto
    GROUP BY codigo_fabricante
	) nuevatabla
ON fabricante.codigo = nuevatabla.codigo_fabricante
ORDER BY Nom_Fab ASC;