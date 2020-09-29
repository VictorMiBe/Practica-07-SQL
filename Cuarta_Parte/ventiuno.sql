SELECT COUNT(p.nombre), f.nombre
FROM producto p JOIN fabricante f
ON p.codigo_fabricante = f.codigo
WHERE p.precio >= 180
GROUP BY f.nombre
