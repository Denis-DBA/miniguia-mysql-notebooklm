/*
===========================================
Projeto: Banco de Dados Oficina
Arquivo: procedimentos.sql
Descrição: Procedures utilizadas no projeto.
===========================================
*/

DELIMITER $$

CREATE PROCEDURE LISTAR_CLIENTES()
BEGIN
    SELECT *
    FROM CLIENTE;
END $$

DELIMITER ;

-- Executar Procedure
CALL LISTAR_CLIENTES();
