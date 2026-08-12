-- Dentre os clientes de janeiro/2025, quantos assistiram o curso de SQL?

WITH

-- Clientes cadastrados em janeiro/2025

tb_clientes_janeiro AS (
    SELECT DISTINCT
        IdCliente

    FROM
        transacoes

    WHERE
            DtCriacao >= '2025-01-01'
        AND DtCriacao < '2025-02-01'
),

-- Clientes que assinaram a lista de presença durante o curso de SQL (2025-08-25 a 2025-08-29)

tb_clientes_curso AS (
    SELECT DISTINCT
        IdCliente

    FROM
        transacoes

    WHERE
            DtCriacao >= '2025-08-25'
        AND DtCriacao < '2025-08-30'
),

tb_join AS (
    SELECT
        t1.IdCliente AS cliente_janeiro,
        t2.IdCliente AS cliente_curso

    FROM
        tb_clientes_janeiro AS t1

    LEFT JOIN tb_clientes_curso AS t2
    ON t1.IdCliente = t2.IdCliente
)

SELECT
    count(cliente_janeiro) AS clientes_janeiro,
    count(cliente_curso) AS assistiram_curso

FROM
    tb_join;
