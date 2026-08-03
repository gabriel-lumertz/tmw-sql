-- Em 2024, quantas transações de Lovers tivemos?

SELECT
    count(DISTINCT t1.IdTransacao) AS qtde_transacoes_lovers

FROM
    transacoes t1

LEFT JOIN transacao_produto t2
    ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos t3
    ON t2.IdProduto = t3.IdProduto

WHERE
    substr(t1.DtCriacao, 1, 4) = '2024'
    AND t3.DescCategoriaProduto = 'lovers';