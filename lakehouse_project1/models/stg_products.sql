{{ config(materialized='view') }}

WITH ranked_products AS (
  SELECT
    stockcode,
    description,
    unitprice,
    ROW_NUMBER() OVER (
      PARTITION BY stockcode
      ORDER BY unitprice DESC
    ) AS row_num
  FROM {{ ref('stg_orders') }}
  WHERE stockcode IS NOT NULL
    AND unitprice IS NOT NULL
)

SELECT
  stockcode,
  description,
  unitprice
FROM ranked_products
WHERE row_num = 1
