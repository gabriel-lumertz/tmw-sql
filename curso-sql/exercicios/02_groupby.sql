-- Qual cliente juntou mais pontos positivos em 2025-05?

SELECT
    Idcliente,
    SUM(Qtdepontos) AS TotalPontos

FROM
    transacoes

WHERE
    Qtdepontos > 0
    AND DtCriacao >= '2025-05-01'
    AND DtCriacao < '2025-06-01'

GROUP BY
    Idcliente

ORDER BY
    SUM(Qtdepontos) DESC

LIMIT 1;