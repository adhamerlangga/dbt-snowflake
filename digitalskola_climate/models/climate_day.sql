{{ config(
    schema='stg'
) }}

select
  {{ dbt_utils.star(source('STANDARD_TILE','CLIMATOLOGY_DAY')) }}
from {{ source('STANDARD_TILE', 'CLIMATOLOGY_DAY') }}
