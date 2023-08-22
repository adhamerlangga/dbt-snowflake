{{ config(schema='mart') }}

select
  {{ dbt_utils.star(ref('delayed_deliveries')) }}
from {{ ref('delayed_deliveries') }}
