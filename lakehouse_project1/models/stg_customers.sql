{{ config(materialized='view') }}

WITH ranked_customers AS (
  SELECT
    customerid,
    country,
    ROW_NUMBER() OVER (PARTITION BY customerid ORDER BY country) AS row_num
  FROM {{ ref('stg_orders') }}
  WHERE customerid IS NOT NULL
)

SELECT
  customerid,
  country
FROM ranked_customers
WHERE row_num = 1
