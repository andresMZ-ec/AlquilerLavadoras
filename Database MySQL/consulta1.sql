

/*•	Conocer cuantas libras de ropa ha lavado cada lavaddora de la empresa por AÑO*/
SELECT
      LAVADORA.LAVADORA_ID AS ID,
      LAVADORA.LAVADORA_DESCRIP AS Lavadora,
      YEAR(FACTURA.FACTURA_FECHA) AS Año,
      LAVADORA.LAVADORA_PESO_KG * 2.2 as PesoPorLibra,
      COUNT(FACTURA_DETALLE.LAVADORA_ID) AS VecesAlq,
      (LAVADORA.LAVADORA_PESO_KG * 2.2) * COUNT(FACTURA_DETALLE.LAVADORA_ID) AS TotalLibras
FROM FACTURA_DETALLE
INNER JOIN LAVADORA ON LAVADORA.LAVADORA_ID = FACTURA_DETALLE.LAVADORA_ID
INNER JOIN MARCA ON MARCA.MARCA_ID = LAVADORA.MARCA_ID
INNER JOIN MODELO ON MODELO.MODELO_ID = LAVADORA.MODELO_ID
INNER JOIN FACTURA ON FACTURA.FACTURA_ID = FACTURA_DETALLE.FACTURA_ID
WHERE YEAR(FACTURA.FACTURA_FECHA)=2020
GROUP BY ID 
ORDER BY ID