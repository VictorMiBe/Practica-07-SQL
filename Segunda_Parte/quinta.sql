SELECT p.nombre nom_pro, p.precio pro_precio, f.nombre nom_fab
FROM fabricante f, producto p
WHERE p.codigo_fabricante = f.codigo
ORDER BY precio DESC
LIMIT 1;