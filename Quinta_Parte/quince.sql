SELECT nombre
FROM fabricante
WHERE NOT EXISTS
(SELECT codigo_fabricante FROM producto
WHERE producto.codigo_fabricante=fabricante.codigo)