SELECT
    round(avg(QtdePontos), 2) AS MediaCarteira,
    1. * sum(QtdePontos) / count(IdCliente) AS MediaCarteira,
    min(QtdePontos) AS MinimoCarteira,
    max(QtdePontos) AS MaximoCarteira,
    sum(FlTwitch) AS TotalTwitch,
    sum(FlEmail) AS TotalEmail

FROM
    clientes;