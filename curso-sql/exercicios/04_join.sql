-- Clientes mais antigos, tem mais frequência de transação?

SELECT
    substr(t1.DtCriacao, 1, 4) AS ano_cadastro,
    count(DISTINCT t1.idCliente) AS qtde_clientes,
    count(DISTINCT t2.IdTransacao) AS qtde_transacoes,
    round(
        1.0 * count(DISTINCT t2.IdTransacao) / count(DISTINCT t1.idCliente),
        2
    ) AS freq_transacoes_por_cliente

FROM
    clientes t1

LEFT JOIN transacoes t2
ON t1.idCliente = t2.IdCliente

GROUP BY
    ano_cadastro

ORDER BY
    ano_cadastro;
