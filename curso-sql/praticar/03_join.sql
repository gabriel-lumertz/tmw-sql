-- Qual mês tivemos mais lista de presença assinada??

SELECT
    substr(t1.DtCriacao, 1, 7) AS anomes,
    count(DISTINCT t1.IdTransacao) AS qtdeTrasacao

FROM
    transacoes t1

LEFT JOIN transacao_produto t2
    ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos t3
    ON t2.IdProduto = t3.IdProduto

WHERE
    t3.DescNomeProduto = 'Lista de presença'

GROUP BY
    substr(t1.DtCriacao, 1, 7)

ORDER BY
    qtdeTrasacao DESC

LIMIT 1;
