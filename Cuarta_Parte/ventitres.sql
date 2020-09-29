SELECT AVG(p.precio) Media, f.nombre
FROM producto p JOIN fabricante f
ON p.codigo_fabricante = f.codigo
GROUP BY f.nombre
