SELECT p.nombre, f.nombre
FROM producto p, fabricante f
WHERE p.codigo_fabricante = f.codigo AND f.nombre IN ('Asus', 'Hewlett-Packard', 'Seagate')