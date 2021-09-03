DELIMITER //

CREATE PROCEDURE controlMantenimientos( IN _id_tecnico INT )

BEGIN
    SELECT 
        EMPLEADO_NOMBRE as Tecnico,
        LAVADORA_DESCRIP as Lavadora,
        MANTENIMIENTO_FECHA as Fecha
    FROM mantenimiento
    INNER JOIN empleado ON empleado.EMPLEADO_ID = mantenimiento.EMPLEADO_ID
    INNER JOIN lavadora ON lavadora.LAVADORA_ID = mantenimiento.LAVADORA_ID
    WHERE empleado.EMPLEADO_ID = _id_tecnico;

END //

DELIMITER ;