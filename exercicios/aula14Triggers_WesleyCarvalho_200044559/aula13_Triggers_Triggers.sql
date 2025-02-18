-- ﻿-------------   << aula13Triggers >>   ---------------
--
--                SCRIPT DE TRIGGER (DDL)
--
-- Data de Criacao ........: 09/03/2020
-- Autor(es) ..............: Wesley Lira Carvalho
-- Banco de Dados .........: MySql 8.0
-- Base de Dados (nome) ...: aula13Triggers
--
-- Alteracoes no Script:
--
-- PROJETO => 01 Base de Dados
--         => 04 Tabelas
--         => 03 Triggers
--
-- -------------------------------------------------------

USE aula13triggers;

-- 1° - abaixo tem como funcionalidde validar os dados
-- que foram passados em uma declaração INSERT antes que sejam
-- cadastrados em uma tabela. Nesse Trigger ele irá validar
-- a quantidade de caracteres maior ou igual a 4.

DELIMITER //
CREATE TRIGGER trg_1 BEFORE INSERT ON tbl_cliente
FOR EACH ROW
BEGIN
	DECLARE nome_cliente VARCHAR(80);
	set nome_cliente = NEW.cliente_nome;
    
    IF CHAR_LENGHT(nome_cliente) < 4 OR nome_cliente = '' THEN
		SET NEW.cliente_nome = NULL;
	END IF;
END//
DELIMITER ;

-- 2° - Este tem como a funcionalidade de verificar,
-- após um insert na tabela tbl_compra, se o produto a ser
-- inserido existe na tabela de produtos e se o cliente
-- que efetua a compra está na tabela tbl_cliente

DELIMITER //
CREATE TRIGGER trg_2 BEFORE INSERT ON tbl_compra
FOR EACH ROW
BEGIN
    IF (SELECT COUNT(*) FROM tbl_cliente WHERE cliente_id = NEW.cliente_id) = 0 THEN
		SET NEW.cliente_id = NULL;
	END IF;
    
    IF (SELECT COUNT(*) FROM tbl_produto WHERE produto_id = NEW.produto_id) = 0 THEN
		SET NEW.produto_id = NULL;
	END IF;
    
    IF NEW.cliente_id IS NULL OR NEW.produto_id IS NULL THEN
		SET NEW.cliente_id = NULL;
        SET NEW.produto_id = NULL;
	END IF;
END//
DELIMITER ;

-- 3° - Esta Trigger tem como a funcionalidade de realizar
-- um insert na tabela tbl_newsletter trazendo o valor da coluna 
-- cliente_email da tabela tbl_cliente no momento de sua inserção.

DELIMITER //
CREATE TRIGGER trg_3 AFTER INSERT ON tbl_cliente
FOR EACH ROW
BEGIN
	IF (NEW.cliente_email IS NOT NULL) THEN
		INSERT INTO tbl_newsletter SET news_email = NEW.cliente_email;
	END IF;
END //
DELIMITER ;