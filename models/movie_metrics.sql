with
movies as (
    select
        movie_id,
        count(1) as n_ratings,
        avg(rating) as avg_ratings
    from
        {{ ref('ratings') }} as ratings
    group by
        movie_id),
tags as (
    select
        movie_id,
        count(1) as n_tags
    from
        {{ ref('tags') }} as tags
    group by
        movie_id)
select
    coalesce(movies.movie_id, tags.movie_id) as movie_id,
    coalesce(n_ratings, 0) as n_ratings,
    coalesce(avg_ratings, 0) as avg_ratings,
    coalesce(n_tags, 0) as n_tags
from
    movies
    full outer join tags
        on movies.movie_id = tags.movie_id
