{{ config(materialized='view') }}

SELECT
    customerid,
    country
FROM {{ ref('stg_customers') }}
