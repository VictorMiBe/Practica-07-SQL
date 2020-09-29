SELECT p.nombre
FROM producto p, fabricante f
WHERE f.nombre = 'Crucial' AND p.precio > 839.18 AND p.codigo_fabricante = f.codigo;