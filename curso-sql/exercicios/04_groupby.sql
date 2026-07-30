-- Quantos produtos são de rpg?

SELECT
    COUNT(DISTINCT IdProduto) AS QtdeProdutosRPG

FROM
    produtos

WHERE
    DescCategoriaProduto = 'rpg';

SELECT
    DescCategoriaProduto,
    COUNT(DISTINCT IdProduto) AS QtdeProdutos

FROM
    produtos

GROUP BY
    DescCategoriaProduto;