SELECT
    country,
    postal_code
FROM {{ ref('delayed_deliveries')}}
WHERE postal_code = '02047'