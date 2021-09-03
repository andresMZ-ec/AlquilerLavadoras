SELECT
    LAVADORA_DESCRIP as NameLavadora,
    COUNT(FAC_DET_ID) as cantidad
FROM lavadora
INNER JOIN factura_detalle ON factura_detalle.LAVADORA_ID = lavadora.LAVADORA_ID
GROUP BY NameLavadora