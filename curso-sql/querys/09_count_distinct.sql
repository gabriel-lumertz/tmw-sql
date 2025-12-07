-- SELECT
--     DISTINCT FlTwitch, FlEmail

-- FROM
--     clientes;


-- SELECT
--     COUNT(DISTINCT IdCliente)

-- FROM
--     clientes;

SELECT
    COUNT(*),
    COUNT(DISTINCT IdTransacao),
    COUNT(DISTINCT IdCliente)

FROM
    transacoes

WHERE
    DtCriacao >= '2025-07-01' AND
    dtCriacao < '2025-08-01'

ORDER BY
    DtCriacao;