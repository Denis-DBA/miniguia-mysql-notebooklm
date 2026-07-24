/*
===========================================
Projeto: Banco de Dados Oficina
Arquivo: inserts.sql
Descrição: Inserção de dados para testes.
Autor: Denis André Ramalho
===========================================
*/

USE OFICINA;

-- =====================================
-- Tabela: CLIENTE
-- =====================================

INSERT INTO CLIENTE (NOME, SEXO)
VALUES
('Carlos', 'M'),
('Ana', 'F');

-- =====================================
-- Tabela: MARCA
-- =====================================

INSERT INTO MARCA (MARCA)
VALUES
('Toyota'),
('Honda');

-- =====================================
-- Tabela: CARRO
-- =====================================

INSERT INTO CARRO (MODELO, PLACA, ID_MARCA, ID_CLIENTE)
VALUES
('Corolla', 'ABC1D23', 1, 1),
('Civic', 'XYZ4E56', 2, 2);

-- =====================================
-- Tabela: COR
-- =====================================

INSERT INTO COR (COR)
VALUES
('Preto'),
('Branco');

-- =====================================
-- Tabela: TELEFONE
-- =====================================

INSERT INTO TELEFONE (TIPO, NUMERO, ID_CLIENTE)
VALUES
('CEL', '(11) 99999-1234', 1),
('RES', '(11) 3456-7890', 2);
