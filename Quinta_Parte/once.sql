SELECT nombre
FROM fabricante
WHERE codigo <> ALL
(SELECT codigo_fabricante FROM producto
WHERE producto.codigo_fabricante=fabricante.codigo)