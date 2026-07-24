/*
===========================================
Projeto: Banco de Dados Oficina
Arquivo: views.sql
Descrição: Criação e teste das Views.
===========================================
*/

-- =====================================
-- View: Relatório de Carros
-- =====================================

CREATE VIEW V_RELATORIO_CARROS AS
SELECT
    C.NOME AS CLIENTE,
    C.SEXO,
    CA.MODELO,
    CA.PLACA,
    M.MARCA,
    CO.COR
FROM CLIENTE C
INNER JOIN CARRO CA
    ON C.IDCLIENTE = CA.ID_CLIENTE
INNER JOIN MARCA M
    ON CA.ID_MARCA = M.IDMARCA
INNER JOIN CARRO_COR CC
    ON CA.IDCARRO = CC.ID_CARRO
INNER JOIN COR CO
    ON CC.ID_COR = CO.IDCOR;

-- =====================================
-- Teste da View
-- =====================================

SELECT *
FROM V_RELATORIO_CARROS;
