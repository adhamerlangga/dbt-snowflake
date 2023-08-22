{{ config(schema='intermediate') }}

select
  *
from {{ ref('delayed_deliveries') }}
