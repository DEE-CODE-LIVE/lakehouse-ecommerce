{{ config(materialized='view') }}

SELECT
    stockcode,
    description,
    unitprice
FROM {{ ref('stg_products') }}
