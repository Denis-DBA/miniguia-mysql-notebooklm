/*
===========================================
Projeto: Banco de Dados Oficina
Arquivo: triggers.sql
===========================================
*/

DELIMITER $$

CREATE TRIGGER BACKUP_CLIENTE
AFTER DELETE ON CLIENTE

FOR EACH ROW

BEGIN

    INSERT INTO BKP_CLIENTE
    VALUES (
        NULL,
        OLD.IDCLIENTE,
        OLD.NOME,
        NOW()
    );

END $$

DELIMITER ;
