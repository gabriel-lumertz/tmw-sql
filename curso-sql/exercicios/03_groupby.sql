-- Qual cliente fez mais transações no ano de 2024?

SELECT
    Idcliente,
    COUNT(*) AS TotalTransacoes

FROM
    transacoes

WHERE
        DtCriacao >= '2024-01-01'
    AND DtCriacao < '2025-01-01'

GROUP BY
    Idcliente

ORDER BY
    COUNT(*) DESC

LIMIT 1;