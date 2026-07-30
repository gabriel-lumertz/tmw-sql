-- Qual o produto com mais pontos transacionados?

SELECT
    IdProduto,
    sum(QtdeProduto) AS qtdevenda,
    sum(VlProduto * QtdeProduto) AS totalPontos

FROM
    transacao_produto

GROUP BY
    IdProduto

ORDER BY
    sum(VlProduto) DESC

LIMIT 1;