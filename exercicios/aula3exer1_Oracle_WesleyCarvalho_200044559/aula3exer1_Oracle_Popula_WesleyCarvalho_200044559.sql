-- -------- < ESCALAS DE PLANTONISTAS > --------
--
--                    SCRIPT DE INSERCAO (DDL)
--
-- Data Criacao ...........: 10/12/2024
-- Autor(es) ..............: Wesley Lira Carvalho
-- Banco de Dados .........: ORACLE APEX
-- Base de Dados (nome) ...: VRVR
--
-- PROJETO => 01 Base de Dados
--         => 05 Tabelas

-- 
-- Ultimas Alteracoes
-- ---------------------------------------------------------

INSERT ALL
    -- PLANTONISTA
    INTO WLC_PLANTONISTA (matriculaFuncional, nomeCompleto, sexo) VALUES (10001, 'Carlos Silva', 'M')
    INTO WLC_PLANTONISTA (matriculaFuncional, nomeCompleto, sexo) VALUES (10002, 'Ana Pereira', 'F')
    INTO WLC_PLANTONISTA (matriculaFuncional, nomeCompleto, sexo) VALUES (10003, 'João Souza', 'M')
    INTO WLC_PLANTONISTA (matriculaFuncional, nomeCompleto, sexo) VALUES (10004, 'Mariana Lima', 'F')
    INTO WLC_PLANTONISTA (matriculaFuncional, nomeCompleto, sexo) VALUES (10005, 'Pedro Costa', 'M')

    -- SETOR
    INTO WLC_SETOR (idSetor, nome, descricao) VALUES (1, 'Emergência', 'Atendimento de emergência')
    INTO WLC_SETOR (idSetor, nome, descricao) VALUES (2, 'UTI', 'Unidade de Terapia Intensiva')
    INTO WLC_SETOR (idSetor, nome, descricao) VALUES (3, 'Pediatria', 'Atendimento pediátrico')
    INTO WLC_SETOR (idSetor, nome, descricao) VALUES (4, 'Ortopedia', 'Atendimento ortopédico')
    INTO WLC_SETOR (idSetor, nome, descricao) VALUES (5, 'Geriatria', 'Atendimento geriátrico')

    -- ESPECIALIDADE
    INTO WLC_ESPECIALIDADE (idEspecialidade, nome) VALUES (1, 'Cardiologia')
    INTO WLC_ESPECIALIDADE (idEspecialidade, nome) VALUES (2, 'Pediatria')
    INTO WLC_ESPECIALIDADE (idEspecialidade, nome) VALUES (3, 'Ortopedia')
    INTO WLC_ESPECIALIDADE (idEspecialidade, nome) VALUES (4, 'Geriatria')
    INTO WLC_ESPECIALIDADE (idEspecialidade, nome) VALUES (5, 'Neurologia')
    INTO WLC_ESPECIALIDADE (idEspecialidade, nome) VALUES (6, 'Enfermeiro Geral')

    -- RELAÇÃO DE PLANTONISTAS COM ESPECIALIDADES
    INTO WLC_possui (matriculaFuncional, idEspecialidade) VALUES (10001, 1) -- Carlos tem mais de uma especialidade
    INTO WLC_possui (matriculaFuncional, idEspecialidade) VALUES (10001, 3)
    INTO WLC_possui (matriculaFuncional, idEspecialidade) VALUES (10002, 2)
    INTO WLC_possui (matriculaFuncional, idEspecialidade) VALUES (10003, 4)
    INTO WLC_possui (matriculaFuncional, idEspecialidade) VALUES (10004, 1)
    INTO WLC_possui (matriculaFuncional, idEspecialidade) VALUES (10005, 6)

    -- RELAÇÃO DE PLANTONISTAS COM SETORES E HORÁRIOS
    INTO WLC_alocado (matriculaFuncional, idSetor, horarioEntrada, horarioSaida) VALUES (10001, 1, TO_TIMESTAMP('2024-12-11 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-12-11 14:00:00', 'YYYY-MM-DD HH24:MI:SS'))
    INTO WLC_alocado (matriculaFuncional, idSetor, horarioEntrada, horarioSaida) VALUES (10002, 1, TO_TIMESTAMP('2024-12-11 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-12-11 14:00:00', 'YYYY-MM-DD HH24:MI:SS')) -- Mesmo setor e horário de Carlos
    INTO WLC_alocado (matriculaFuncional, idSetor, horarioEntrada, horarioSaida) VALUES (10003, 2, TO_TIMESTAMP('2024-12-11 14:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-12-11 20:00:00', 'YYYY-MM-DD HH24:MI:SS'))
    INTO WLC_alocado (matriculaFuncional, idSetor, horarioEntrada, horarioSaida) VALUES (10004, 3, TO_TIMESTAMP('2024-12-11 20:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-12-12 02:00:00', 'YYYY-MM-DD HH24:MI:SS'))
    INTO WLC_alocado (matriculaFuncional, idSetor, horarioEntrada, horarioSaida) VALUES (10005, 4, TO_TIMESTAMP('2024-12-12 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2024-12-12 14:00:00', 'YYYY-MM-DD HH24:MI:SS'))

SELECT * FROM DUAL;