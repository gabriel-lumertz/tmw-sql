SELECT
    ROUND(AVG(QtdePontos), 2) AS MediaCarteira,
    1. * SUM(QtdePontos) / COUNT(IdCliente) AS MediaCarteira,
    MIN(QtdePontos) AS MinimoCarteira,
    MAX(QtdePontos) AS MaximoCarteira,
    SUM(FlTwitch)   AS TotalTwitch,
    SUM(FlEmail)    AS TotalEmail

FROM
    clientes;