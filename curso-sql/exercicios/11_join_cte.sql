-- Quem iniciou o curso no primeiro dia, em média assistiu quantas aulas?

WITH

-- Clientes que iniciaram o curso no primeiro dia (2025-08-29)

tb_primeiro_dia AS (
    
    SELECT DISTINCT
        IdCliente

    FROM
        transacoes

    WHERE
        substr(DtCriacao, 1, 10) = '2025-08-25'
),

-- Quantidade de aulas (presenças) de cada cliente durante o curso

tb_dias_curso AS (
    
    SELECT DISTINCT
        IdCliente,
        substr(DtCriacao, 1, 10) AS presente_no_dia

    FROM
        transacoes

    WHERE dtCriacao >= '2025-08-25'
    AND dtCriacao < '2025-08-30'

    ORDER BY
        IdCliente,
        presente_no_dia
),

tb_cliente_aulas AS(
    
    SELECT
        t1.IdCliente,
        count(t2.presente_no_dia) AS qtde_aulas

    FROM
        tb_primeiro_dia AS t1

    LEFT JOIN
        tb_dias_curso AS t2
        ON t1.IdCliente = t2.IdCliente

    GROUP BY
        t1.IdCliente
)

SELECT avg(qtde_aulas) FROM tb_cliente_aulas;
