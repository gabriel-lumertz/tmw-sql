-- Intervalos
-- De 0 a 500       -> Ponei
-- De 501 a 1000    -> Ponei Premium
-- De 1001 a 5000   -> Mago Aprendiz
-- de 5001 a 10000  -> Mago Mestre
-- Acima de 10000   -> Mago Supremo

SELECT
    IdCliente,
    QtdePontos,
    CASE
        WHEN QtdePontos <= 500      THEN 'Ponei'
        when QtdePontos <= 1000     THEN 'Ponei Premium'
        WHEN QtdePontos <= 5000     THEN 'Mago Aprendiz'
        WHEN QtdePontos <= 10000    THEN 'Mago Mestre'
        ELSE 'Mago Supremo'
    END AS NomeGrupo,

    CASE
        WHEN QtdePontos <= 500  THEN 1
        ELSE 0
    END AS flPonei,

    CASE
        WHEN QtdePontos <= 1000  THEN 1
        ELSE 0
    END AS flPoneiPremium,

    CASE
        WHEN QtdePontos <= 5000  THEN 1
        ELSE 0
    END AS flMagoAprendiz,

    CASE
        WHEN QtdePontos > 5000  THEN 1
        ELSE 0
    END AS flMagoMestre


FROM
    clientes

ORDER BY
    QtdePontos DESC;