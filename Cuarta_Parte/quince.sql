SELECT MAX(p.precio) Maximo, MIN(p.precio) Minimo, AVG(p.precio) Media, COUNT(p.nombre) N_Total	
FROM producto p JOIN fabricante f
ON p.codigo_fabricante = f.codigo
WHERE f.nombre = 'Crucial';