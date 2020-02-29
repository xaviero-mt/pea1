DELIMITER $$
DROP PROCEDURE IF EXISTS actualizar_producto;
CREATE PROCEDURE actualizar_producto(
  
 -- IN  _p_nombre  VARCHAR(50),
 -- IN  _p_precio  INT
 -- IN  _p_tipo VARCHAR (50),
--  IN  _p_id_producto INT,
--  OUT _p_confirm INT
)
BEGIN
    --
    UPDATE dispositivo
      SET nombre = _p_nombre,
          precio = _p_precio
          tipo = _p_tipo,
     WHERE id_producto = _p_id_producto;
    --
    IF ROW_COUNT() > 0 THEN
        SET _p_confirm = 1;
    ELSE
        SET _p_confirm = 0;
    END IF;
END$$
DELIMITER ;