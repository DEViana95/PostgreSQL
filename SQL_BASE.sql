-- CONCEITOS
    -- Tipos de linguagem:
        -- DML - Linguagem de manipulação de dados (INSERT, UPDATE e DELETE)

        -- DDL - Linguagem de definição de dados (CREATE e DROP)

        -- DCL - Linguagem de controle de dados:
            -- *GRANT - Autoriza ao usuário executar comandos.
            -- *REVOKE - Remove ou restringe a capacidade de um usuário de executar comandos.

        -- DTL - Linguagem de transação de dados (BEGIN WORK ou BEGIN TRANSACTION, COMMIT, ROLLBACK)

        -- DQL - Linguagem de consulta de dados (SELECT - é o principal comando usado em SQL)
    
    -- Palavras chave em SQL:
        -- Cláusulas - FROM, WHERE, ORDER BY, etc.
        -- Operadores lógicos - AND, OR e NOT.
        -- Operadores relacionais - <, >, <=, >=, = e <>.
        -- Funções de agregação - AVG, COUNT, SUM, MAX, MIN, etc.

-- Busca as tabelas do banco a partir dos schemas.
SELECT 
	*
FROM pg_catalog.pg_tables
WHERE 
	schemaname != 'pg_catalog' AND 
    schemaname != 'information_schema';

-- Cria a tabela teste caso a mesma não exista.
CREATE TABLE IF NOT EXISTS teste (
   	id bigserial PRIMARY KEY,
   	column_one TEXT,
   	column_two TEXT
);

-- Cria a tabela teste_two caso a mesma não exista.
CREATE TABLE IF NOT EXISTS teste_two (
   	id bigserial PRIMARY KEY,
   	column_one TEXT,
   	column_two TEXT
);

-- Busca todos os dados de determinada tabela (* = todas as colunas).
SELECT 
	t.*
FROM teste AS t
;

-- Busca os dados da tabela das colunas selecionadas.
SELECT 
	tt.id,
	tt.column_two
FROM teste_two AS tt
;

-- Busca os dados de todos os registros que o id seja igual a 20.
SELECT 
	*
FROM teste
WHERE
	id = 20
;

-- Busca todos os registros em que o id seja igual a 20 ou column_two seja igual a 'Valor 1'.
SELECT
	*
FROM teste
WHERE
	id = 20
	OR colum_two = 'Valor 1';

-- Busca todos os registros em que o id seja igual a 20 e column_two seja igual a 'Valor 20'.
SELECT
	*
FROM teste
WHERE
	id = 20
	OR colum_two = 'Valor 20';

    