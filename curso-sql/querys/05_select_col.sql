SELECT

    IdCliente,
    QtdePontos,
    QtdePontos + 10 AS "QtdePontosPlus10",
    QtdePontos * 2 AS "QtdePontosDouble",
    DtCriacao,

    substr(Dtcriacao, 1, 19) AS dtSubstring,

    datetime(substr(Dtcriacao, 1, 19)) AS dtCriacaoNova,

    strftime('%w', datetime(substr(Dtcriacao, 1, 19))) AS diaSemana

FROM clientes

LIMIT 10;