-- Como foi a curva de Churn do Curso de SQL?

WITH

-- Clientes que estavam no primeiro dia do curso

tb_clientes_d1 AS (
    
    SELECT
        DISTINCT IdCliente

    FROM
        transacoes

    WHERE
            substr(DtCriacao, 1, 10) >= '2025-08-25'
        AND substr(DtCriacao, 1, 10) < '2025-08-26'

),

tb_join AS (

SELECT
    substr(DtCriacao, 1, 10) AS DtDia,
    count(DISTINCT t1.IdCliente) AS qtdeClientes,
    1. * count(DISTINCT t1.IdCliente) / (SELECT count(*) FROM tb_clientes_d1) AS pctRetorno,
    1- 1. * count(DISTINCT t1.IdCliente) / (SELECT count(*) FROM tb_clientes_d1) AS pctChurn

FROM
    tb_clientes_d1 AS t1

LEFT JOIN
    transacoes AS t2
    ON t1.IdCliente = t2.IdCliente

WHERE
        substr(t2.DtCriacao, 1, 10) >= '2025-08-25'
    AND substr(t2.DtCriacao, 1, 10) < '2025-08-30'

GROUP BY
    dtDia
)

SELECT * FROM tb_join;
