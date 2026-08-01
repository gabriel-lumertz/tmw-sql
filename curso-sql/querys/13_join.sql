SELECT
    T1.*,
    T2.DescDescricaoProduto

FROM
    transacao_produto AS T1

LEFT JOIN
    produtos AS T2 ON T1.IdProduto = T2.IdProduto

WHERE T2.IdProduto IS NULL

LIMIT 10;