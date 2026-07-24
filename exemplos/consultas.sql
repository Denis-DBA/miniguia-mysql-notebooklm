/*
===========================================
Projeto: Banco de Dados Oficina
Arquivo: consultas.sql
Descrição: Exemplos de consultas SQL.
===========================================
*/

-- Listar todos os clientes
SELECT *
FROM CLIENTE;

-- Listar apenas os nomes dos clientes
SELECT NOME
FROM CLIENTE;

-- Clientes do sexo feminino
SELECT *
FROM CLIENTE
WHERE SEXO = 'F';

-- Clientes em ordem alfabética
SELECT *
FROM CLIENTE
ORDER BY NOME;

-- Quantidade de clientes
SELECT COUNT(*) AS TOTAL_CLIENTES
FROM CLIENTE;
