SELECT f.nombre, p.nombre
FROM fabricante f LEFT JOIN producto p
ON p.codigo_fabricante = f.codigo 