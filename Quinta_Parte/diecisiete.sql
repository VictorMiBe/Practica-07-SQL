SELECT nombre, nuevatabla.nom_fab
FROM producto JOIN  
(SELECT AVG(precio) media, fabricante.codigo f_cod, fabricante.nombre nom_fab
FROM producto, fabricante
WHERE producto.codigo_fabricante=fabricante.codigo
GROUP BY fabricante.nombre) nuevatabla
ON producto.codigo_fabricante = nuevatabla.f_cod
WHERE precio >= nuevatabla.media