SELECT AVG(p.precio) as Media
FROM producto p JOIN fabricante f
ON p.codigo_fabricante = f.codigo
WHERE f.nombre = 'Asus'