-- Dos clientes que começaram SQL no primeiro dia, quantos chegaram ao quinto dia?

WITH

-- Clientes que tiveram pontos no primeiro dia do intensivão de SQL

primeiro_dia AS (
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-29'
),

-- Clientes que tiveram pontos no quinto dia do intensivão de SQL

quinto_dia AS (
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = date('2025-08-29', '+4 days')
),

tb_join AS (
    SELECT t1.IdCliente AS cliente_primeiro_dia,
           t2.IdCliente AS cliente_quinto_dia
    FROM primeiro_dia AS t1
    LEFT JOIN quinto_dia AS t2
        ON t1.IdCliente = t2.IdCliente
)

SELECT
    count(cliente_primeiro_dia) AS clientes_primeiro_dia,
    count(cliente_quinto_dia) AS clientes_quinto_dia,
    1. * count(cliente_quinto_dia) / count(cliente_primeiro_dia) AS proporcao

FROM tb_join;
