DELIMITER //

CREATE PROCEDURE proveedorProformaCursor()

BEGIN
    DECLARE totalProformas INT;
    DECLARE cantComprada INT;

    DECLARE CursorCantProf CURSOR FOR SELECT COUNT(*) AS cantProformas FROM proforma;
    DECLARE CursorCantComprada CURSOR FOR SELECT COUNT(estado) as cantidad FROM proforma WHERE estado = "Comprada";

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET @hecho = TRUE;

    OPEN CursorCantProf;
    OPEN CursorCantComprada;

    loop1: LOOP
        
        FETCH CursorCantProf INTO totalProformas;
        FETCH CursorCantComprada INTO cantComprada;

        IF @hecho THEN
        LEAVE loop1;
        END IF;

    END LOOP loop1;

    CLOSE CursorCantProf;
    CLOSE CursorCantComprada;

    SELECT totalProformas, cantComprada as ProformasCompradas;

END//

DELIMITER;