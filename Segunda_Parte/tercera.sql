SELECT p.codigo cod_pro, p.nombre nom_pro, f.codigo cod_fab, f.nombre nom_fab 
FROM fabricante f, producto p 
WHERE p.codigo_fabricante = f.codigo;