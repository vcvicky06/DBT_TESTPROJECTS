{{ config(materialized='ephemeral') }}

select
    id,
    upper(first_name) as first_name,
    upper(last_name) as last_name
from {{ ref('raw_customers') }}