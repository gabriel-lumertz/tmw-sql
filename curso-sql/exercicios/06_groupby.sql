-- Qual dia da semana quem mais pedidos em 2025?

SELECT
    strftime('%w', DtCriacao) AS diaSemana,
    count(DISTINCT IdTransacao) AS qtdeTransacoes

FROM
    transacoes

WHERE
    substr(DtCriacao, 1, 4) = '2025'

group by
    1;