with src_movies as (
    select * from {{ ref('src_movie') }}
)
select 
    movie_id,
    INITCAP(TRIM(movie_title)) as movie_title,
    split(movie_genres, '|') as genre_array,
    movie_genres 

from src_movies

