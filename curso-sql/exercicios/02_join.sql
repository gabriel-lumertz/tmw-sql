-- Quais clientes assinaram a lista de presença no dia 2025/08/25?

SELECT
    t1.IdCliente,
    t1.DtCriacao,
    count(*)

FROM
    transacoes t1

LEFT JOIN transacao_produto t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos t3
ON t2.IdProduto = t3.IdProduto

WHERE
        substr(t1.DtCriacao, 1, 10) = '2025-08-25'
    AND t3.DescNomeProduto = 'Lista de presença'

GROUP BY
    t1.IdCliente;
