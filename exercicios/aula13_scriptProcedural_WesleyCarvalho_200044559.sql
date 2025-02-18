-- -------- < PROGRAMACAO PROCEDURAL > --------
--
--                    SCRIPT DE CRIACAO (DDL)
--
-- Data Criacao ...........: 13/02/2024
-- Autor(es) ..............: Wesley Lira Carvalho
-- Banco de Dados .........: MySQL 8.0
-- Base de Dados (nome) ...: agenda
--
-- PROJETO => 01 Base de Dados
--         => 04 Tabelas
--         => 04 Triggers
--         => 01 Procedimentos
--         => 03 Funcoes

-- 
-- Ultimas Alteracoes
--   14/02/2024 => Alteração na função da questão C) onde inclui a função SUM()
--                 para poder contar as quantidades de produtos sem dar erro
--                 caso tenha dois produtos com nomes iguais.
--
-- ---------------------------------------------------------

USE agenda;

-- Elaborando as funções

-- 1) Crie uma função que conte quantas tuplas tem na tabela PESSOA;

DELIMITER //

CREATE FUNCTION FN_qntd_tuplas ()
RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN
	DECLARE result INT;
    
    SELECT COUNT(*) INTO result
    FROM pessoa;
    
    RETURN result;
END;
//

DELIMITER ;

-- Para mostrar o resultado:
SELECT FN_qntd_tuplas();


-- 2) Elabore um procedimento que conte quantos telefones tem uma
-- pessoa específica (atividade a ser realizada com instrução que 
-- apresente o valor do parâmetro de saída);

DELIMITER $$
CREATE PROCEDURE quantos_telefone (
	IN pessoa_id INT,
    OUT total_telefones INT
)
BEGIN
	SELECT COUNT(*)
    INTO total_telefones
    FROM telefone
    WHERE idPessoa = pessoa_id;
END;
$$

DELIMITER ;

-- Para chamar o procedimento, primeiro definimos uma variável para receber o valor de total de telefones
-- e logo em seguida chamamos o procedimento para sabermos a resposta
SET @total = 0;
CALL quantos_telefone(1, @total);
SELECT @total AS total_telefones;

-- 3) Crie uma função que mostre a quantidade de produtos específicos
-- que será solicitado pelo nome do produto;

DELIMITER $$;

CREATE FUNCTION FN_quantidade_produtos_especifico (produto_nome VARCHAR(80))
RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN
	DECLARE quantidade INT;
    
	SELECT SUM(qntd) INTO quantidade
    FROM produtos
    WHERE nome = produto_nome;
    
    RETURN quantidade;
END;
$$

DELIMITER ;

-- Para chamar a função:
SELECT FN_quantidade_produtos_especifico('Sabonete');

-- 4) Faça uma função que calcule para um produto específico a quantidade
-- financeira em estoque que está armazenada nessa base de dados (total em 
-- valor financeiro R$).

DELIMITER $$
CREATE FUNCTION FN_quantidade_financeira_produto_estoque (nome_produto VARCHAR(80))
RETURNS FLOAT
DETERMINISTIC
READS SQL DATA
BEGIN
	DECLARE result FLOAT;
    
    SELECT SUM(preco * qtde) INTO result
    FROM produtos
    WHERE nome = nome_produto;
    
    RETURN result;
END;
$$

DELIMITER ;

-- Para ver o resultado, basta chamar em uma consulta
SELECT FN_quantidade_financeira_produto_estoque('Cerveja');

-- Apagando as funções:
DROP FUNCTION FN_QNTD_TUPLAS;
DROP FUNCTION FN_quantidade_produtos_especifico;
DROP FUNCTION FN_quantidade_financeira_produto_estoque;

-- Apagando o procedimento
DROP PROCEDURE quantos_telefone;