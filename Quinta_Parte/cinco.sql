SELECT *
FROM producto
WHERE precio >=( SELECT MAX(p.precio)
				 FROM producto p, fabricante f
                 WHERE p.codigo_fabricante = f.codigo
                )