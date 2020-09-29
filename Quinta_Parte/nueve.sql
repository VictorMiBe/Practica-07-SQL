SELECT nombre, precio
FROM producto 
WHERE precio <= ALL (SELECT p.precio
					FROM producto p, fabricante f
                    WHERE p.codigo_fabricante = f.codigo
                    )