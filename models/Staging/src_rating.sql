{{config(
    materialized='table',
)}}


with raw_rating as (
    select * from movielens.raw.raw_ratings
)
select USERID as user_id,
       MOVIEID as movie_id,
       RATING as rating,
       TO_TIMESTAMP_LTZ(timestamp) as rating_timestamp
from raw_rating


