{{
    config(
        materialized='table',
    ) 
}}


with raw_tags as (
    select * from movielens.raw.raw_tags
)
select USERID as user_id,
       MOVIEID as movie_id,
       TAG,
       TO_TIMESTAMP_LTZ(timestamp) as tag_timestamp
from raw_tags
