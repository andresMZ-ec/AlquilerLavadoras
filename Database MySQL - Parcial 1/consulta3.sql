

/*Mostrar cada una de las lavadoras con su fecha de adquisición y con que Proveedor se realizó la compra*/

SELECT
      LAVADORA_ID AS ID,
      LAVADORA.LAVADORA_DESCRIP AS Lavadora,
      PROVEEDOR.PROVEEDOR_NOMBRE AS Proveedor,
      LAVADORA.LAVADORA_DATE_ADQ AS FechaAdquisión
FROM LAVADORA
INNER JOIN PROVEEDOR ON PROVEEDOR.PROVEEDOR_ID = LAVADORA.PROVEEDOR_ID
GROUP BY ID
ORDER BY FechaAdquisión DESC