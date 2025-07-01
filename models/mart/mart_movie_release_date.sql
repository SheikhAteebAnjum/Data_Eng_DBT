{{
    config(
        materialized='table'
    )
}}

with fct_rating as (
    select * from {{ ref('fct_rating') }}
),

seed_date as (
    select * from {{ ref('seed_movie_release_date') }}
)   

select 
f.*,
case
    when d.release_date is null then 'Unknown'
    else 'known'
end as release_date_status

from fct_rating f
left join seed_date d
on f.movie_id = d.movie_id



