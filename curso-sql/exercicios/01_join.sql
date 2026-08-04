-- Quais clientes mais perderam pontos por Lover?

SELECT
    t1.IdCliente,
    t1.IdTransacao,
    SUM(t1.QtdePontos) AS pontos_perdidos,
    t2.IdProduto,
    t3.DescDescricaoProduto,
    t3.DescCategoriaProduto

FROM
    transacoes t1

LEFT JOIN transacao_produto t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos t3
ON t2.IdProduto = t3.IdProduto

WHERE
    t3.DescCategoriaProduto = 'lovers'

GROUP BY
    t1.IdCliente

ORDER BY
    pontos_perdidos ASC;
