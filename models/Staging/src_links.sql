with raw_links as (
    select * from movielens.raw.raw_links
)
select IMDBID as IMDB_ID,
       MOVIEID as movie_id,
       TMDBID as TMDB_ID
from raw_links

