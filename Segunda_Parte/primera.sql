SELECT p.nombre, p.precio, f.nombre FROM fabricante f, producto p
WHERE p.codigo_fabricante = f.codigo;