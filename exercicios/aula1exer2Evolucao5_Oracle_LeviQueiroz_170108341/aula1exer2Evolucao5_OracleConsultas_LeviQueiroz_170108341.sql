-- -------------------< aula1exer2Evolucao5_Oracle > ------------------------------------
--
--                    SCRIPT DE CONSULTAS (DQL)
--
-- Data Criacao ...........: 25/11/2024
-- Autor(es) ..............: Levi de Oliveira Queiroz
-- Banco de Dados .........: Oracle APEX
-- Base de Dados (nome) ...: vrvr
--
-- PROJETO => 01 Base de Dados
--         => 08 Tabelas
--         => 05 Sequencias
--         => 01 Visao
--
-- Ultimas Alteracoes
--   26/11/2024 => Corrige documentacao do script que agora tem uma view.
--              => Ajusta apresentacao do script para ser mais compreensivel para o grupo de trabalho.
--              => 
-- --------------------------------------------------------------------------

-- A) Consultar todas as vendas feitas por um empregado específico
SELECT v.idVenda, v.dataVenda, v.precoTotal
  FROM VRVR2_VENDA v
 WHERE v.matricula = 110;


-- ============================
-- B) Relacionar todos os dados de uma venda específica com todas as informações dos produtos comercializados por esta venda
SELECT v.idVenda,  v.dataVenda,  v.precoTotal AS totalVenda,  p.codigo AS codigoProduto,
       p.nomeProd AS nomeProduto,  p.precoUnitario,  ps.quantidadeProduto,
       (p.precoUnitario * ps.quantidadeProduto) AS totalPorItem
 FROM VRVR2_VENDA v
     JOIN VRVR2_possui ps ON v.idVenda = ps.idVenda
     JOIN VRVR2_PRODUTO p ON ps.codigo = p.codigo
WHERE v.idVenda = 25;


-- ============================
-- C) Mostrar todos os empregados que NÃO sejam gerentes em ordem alfabética crescente
SELECT e.matricula, p.nome, e.cep, e.estado, e.cidade, e.bairro, e.rua,e.numero
  FROM VRVR2_EMPREGADO e
       JOIN VRVR2_PESSOA p ON e.cpf = p.cpf
 WHERE e.matricula NOT IN ( SELECT DISTINCT g.idGerente
                              FROM VRVR2_GERENTE g )
 ORDER BY p.nome ASC;


-- ============================
-- D) Quantidade de CADA produto vendido, implementado como VIEW
CREATE OR REPLACE VIEW VRVR2_V_QTDE_PRODUTO_VENDIDO AS
   SELECT p.codigo AS codigoProduto, p.nomeProd AS nomeProduto,
          SUM(ps.quantidadeProduto) AS quantidadeVendida, p.precoUnitario
     FROM VRVR2_PRODUTO p
          JOIN VRVR2_possui ps ON p.codigo = ps.codigo
    GROUP BY p.codigo, p.nomeProd, p.precoUnitario
    ORDER BY quantidadeVendida DESC;

-- Consulta que aciona a VIEW
SELECT * 
  FROM VRVR2_V_QTDE_PRODUTO_VENDIDO;


-- ============================
-- E) Buscar produtos com parte do nome fornecida pelo usuário
SELECT p.codigo AS codigoProduto, p.nomeProd AS nomeProduto,
       SUM(ps.quantidadeProduto) AS quantidadeVendida
  FROM VRVR2_PRODUTO p
       LEFT JOIN VRVR2_possui ps ON p.codigo = ps.codigo
 WHERE p.nomeProd LIKE '%Choco%'
 GROUP BY p.codigo, p.nomeProd
 ORDER BY p.nomeProd DESC;
