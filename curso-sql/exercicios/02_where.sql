SELECT
    IdTransacao,
    DtCriacao,
    strftime('%w', DtCriacao) AS diaSemana

FROM
    transacoes

WHERE
    -- strftime('%w', DtCriacao) IN ('6', '0')
    diaSemana IN ('6', '0');