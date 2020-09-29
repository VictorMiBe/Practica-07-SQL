SELECT MAX(p.precio) 
FROM producto p JOIN fabricante f
ON p.codigo_fabricante = f.codigo
WHERE f.nombre = 'Asus'