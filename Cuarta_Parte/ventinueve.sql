SELECT producto.nombre, producto.precio,nuevatabla.nom_fab
FROM producto JOIN  
(SELECT MAX(producto.precio) precio, fabricante.codigo f_cod, 
fabricante.nombre nom_fab, 
producto.codigo cod_pro
FROM producto, fabricante
WHERE producto.codigo_fabricante=fabricante.codigo
GROUP BY fabricante.nombre) nuevatabla
ON producto.codigo_fabricante = nuevatabla.f_cod
WHERE producto.precio = nuevatabla.precio