SELECT p.nombre, MAX(p.precio)
FROM fabricante f, producto p
WHERE f.codigo = p.codigo_fabricante 
AND f.nombre = 'Lenovo'