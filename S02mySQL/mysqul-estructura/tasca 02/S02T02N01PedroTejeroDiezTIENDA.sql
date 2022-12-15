USE tienda;
SELECT nombre FROM producto;
SELECT nombre, precio FROM producto;
SELECT * FROM producto;
SELECT nombre, precio, precio*1.05 FROM producto;
SELECT nombre, precio AS euro, precio*1.05 AS dollar FROM producto;
SELECT UPPER(nombre), precio FROM producto;
SELECT LOWER(nombre), precio FROM producto;
SELECT nombre, UPPER(LEFT (nombre, 2)) AS inicials FROM fabricante;
SELECT nombre, ROUND(precio, 2) AS precio FROM producto;
SELECT nombre, ROUND(precio) AS precio FROM producto;
SELECT f.codigo FROM fabricante f JOIN producto p ON f.codigo = p.codigo_fabricante WHERE p.nombre IS NOT NULL;
SELECT DISTINCT f.codigo FROM fabricante f JOIN producto p ON f.codigo = p.codigo_fabricante WHERE p.nombre IS NOT NULL;
SELECT nombre FROM fabricante ORDER BY nombre;
SELECT nombre FROM fabricante ORDER BY nombre DESC;
SELECT nombre FROM producto ORDER BY nombre, precio DESC;
SELECT * FROM fabricante LIMIT 5;
SELECT * FROM fabricante LIMIT 3, 2;
SELECT nombre, precio FROM producto ORDER BY precio LIMIT 1;
SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;
SELECT nombre FROM producto WHERE codigo_fabricante = 2;
SELECT p.nombre, precio, f.nombre AS fabricante FROM producto p JOIN fabricante f ON f.codigo = codigo_fabricante;
SELECT p.nombre, precio, f.nombre AS fabricante FROM producto p JOIN fabricante f ON f.codigo = codigo_fabricante ORDER BY f.nombre;
SELECT p.codigo, p.nombre, f.codigo, f.nombre FROM producto p LEFT JOIN fabricante f ON f.codigo = codigo_fabricante;
SELECT p.nombre, p.precio, f.nombre FROM producto p LEFT JOIN fabricante f ON f.codigo = codigo_fabricante ORDER BY precio DESC LIMIT 1;
SELECT p.nombre, p.precio, f.nombre FROM producto p LEFT JOIN fabricante f ON f.codigo = codigo_fabricante ORDER BY precio DESC LIMIT 1;
SELECT * FROM producto p LEFT JOIN fabricante f ON f.codigo = codigo_fabricante WHERE f.nombre = "lenovo";
SELECT * FROM producto p LEFT JOIN fabricante f ON f.codigo = codigo_fabricante WHERE f.nombre = "crucial" AND precio > 200;
SELECT * FROM producto p LEFT JOIN fabricante f ON f.codigo = codigo_fabricante WHERE f.nombre = "asus" OR f.nombre = "Hewlett-Packard" OR f.nombre = "seagate";
SELECT * FROM producto p LEFT JOIN fabricante f ON f.codigo = codigo_fabricante WHERE f.nombre IN ("asus","Hewlett-Packard","seagate");
SELECT p.nombre, precio FROM producto p JOIN fabricante f ON f.codigo = codigo_fabricante WHERE f.nombre REGEXP "e$";
SELECT p.nombre, precio FROM producto p JOIN fabricante f ON f.codigo = codigo_fabricante WHERE f.nombre REGEXP "w";
SELECT p.nombre AS producto, precio, f.nombre AS fabricante FROM producto p LEFT JOIN fabricante f ON f.codigo = codigo_fabricante WHERE precio > 180 ORDER BY precio DESC, p.nombre;
SELECT f.codigo, f.nombre FROM fabricante f JOIN producto p ON f.codigo = codigo_fabricante;
SELECT f.codigo, f.nombre, p.nombre FROM fabricante f LEFT JOIN producto p ON f.codigo = codigo_fabricante;
SELECT f.codigo, f.nombre FROM fabricante f LEFT JOIN producto p ON f.codigo = codigo_fabricante WHERE p.codigo IS NULL;

