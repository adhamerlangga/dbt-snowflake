
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='incremental', unique_key='id') }}

with source_data as (

    select 1 as id, 'active' as status
    union all
    select 2 as id, 'pending' as status
    union all
    select null as id, 'pending' as status

)

select *
from source_data
where id = 2

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
