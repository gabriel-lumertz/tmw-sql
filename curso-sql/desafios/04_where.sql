SELECT
  *

FROM
  produtos

-- WHERE
--   DescNomeProduto ='Churn_2pp'
--   or DescNomeProduto ='Churn_5pp'
--   or DescNomeProduto ='Churn_10pp'

-- WHERE
--   DescNomeProduto in ('Churn_2pp', 'Churn_5pp', 'Churn_10pp')

WHERE
  DescNomeProduto like 'Churn%'
