-- Qual o valor médio de pontos positivos por dia?

SELECT
    count( DISTINCT substring(DtCriacao, 1, 10)) AS QtdDiasUnicos,
    sum(QtdePontos) AS TotalPontos,
    sum(QtdePontos) / count( DISTINCT substring(DtCriacao, 1, 10)) AS MediaPontosPorDia
FROM
    transacoes

WHERE
    QtdePontos > 0;