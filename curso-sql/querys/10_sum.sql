SELECT
    sum(QtdePontos) AS QtdePontos,
    sum(
        CASE
            WHEN QtdePontos > 0
            THEN QtdePontos
        END) AS QtdePontosPositivo,
    sum(
        CASE
            WHEN QtdePontos < 0
            THEN QtdePontos
        END) AS QtdePontosNegativo

FROM
    transacoes

WHERE
    DtCriacao >= '2025-07-01' AND
    DtCriacao < '2025-08-01'

ORDER BY
    QtdePontos;