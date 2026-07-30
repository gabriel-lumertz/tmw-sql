-- Quantos clientes tem email cadastrado?

SELECT
    sum(flEmail) QtdeClientesComEmail

FROM
    clientes;

SELECT
    COUNT(DISTINCT Idcliente) QtdeClientesComEmail

FROM
    clientes

WHERE
    flEmail = 1;