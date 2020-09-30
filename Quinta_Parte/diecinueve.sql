SELECT fabricante.nombre, COUNT(*) as num_pr 
FROM fabricante JOIN producto 
ON producto.codigo_fabricante = fabricante.codigo 
WHERE fabricante.nombre <> 'Lenovo' 
GROUP BY fabricante.nombre 
HAVING num_pr = (SELECT COUNT(*) 
FROM producto JOIN fabricante 
ON producto.codigo_fabricante = fabricante.codigo 
WHERE fabricante.nombre = 'Lenovo' )