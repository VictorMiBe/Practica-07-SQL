SELECT COUNT(p.codigo_fabricante), f.nombre
FROM producto p JOIN fabricante f
ON p.codigo_fabricante = f.codigo
GROUP BY p.codigo_fabricante
HAVING COUNT(p.codigo_fabricante)>=2
