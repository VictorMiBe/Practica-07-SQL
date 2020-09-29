SELECT DISTINCT p.codigo_fabricante, f.nombre
FROM producto p, fabricante f
WHERE p.codigo_fabricante = f.codigo 
ORDER BY p.codigo_fabricante 