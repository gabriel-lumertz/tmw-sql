-- Dos clientes que começaram SQL no primeiro dia, quantos chegaram ao quinto dia?

SELECT count(DISTINCT IdCliente)

FROM transacoes AS t1

WHERE t1.IdCliente IN (
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-29'
)
AND substr(t1.DtCriacao, 1, 10) = '2025-08-29';
