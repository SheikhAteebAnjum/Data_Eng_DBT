WITH raw_movies AS (
    SELECT * FROM movielens.raw.raw_movies
)
SELECT 
    MOVIEID AS movie_id,
    TITLE AS movie_title,   
    GENRES AS movie_genres
FROM raw_movies



 