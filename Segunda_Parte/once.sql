SELECT p.nombre, p.precio
FROM producto p, fabricante f
WHERE p.codigo_fabricante = f.codigo 
AND f.nombre LIKE '%w%';