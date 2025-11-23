SELECT
    Idcliente,
    QtdePontos
FROM
    clientes
WHERE
    -- QtdePontos >= 100 AND QtdePontos <= 200
    QtdePontos BETWEEN 100 AND 200;