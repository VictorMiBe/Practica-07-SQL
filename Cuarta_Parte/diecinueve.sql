SELECT f.nombre, MAX(p.precio), MIN(p.precio), AVG(p.precio),
CASE WHEN AVG(p.precio) > 200 THEN count((AVG(p.precio)) > 200) END AS total
FROM producto p JOIN fabricante f
ON p.codigo_fabricante = f.codigo
GROUP BY f.nombre
