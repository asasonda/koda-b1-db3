-- 1
select d.first_name as directors, COUNT(dg.genre) as banyak_genre from directors d
join directors_genres dg on d.id = dg.director_id
GROUP BY d.first_name

-- 2
select a.first_name as actor, count(r.role) as banyak_role from actors a 
join roles r on r.actor_id = a.id
GROUP BY a.first_name
having count(r.role) > 5

-- 3
select d.first_name as director, COUNT(md.movie_id) as banyak_movie from directors d
join movies_directors md on md.director_id = d.id
GROUP BY d.first_name
ORDER BY COUNT(md.movie_id) DESC
limit 1


-- 4
select movies.year, count(*) from movies
GROUP BY movies.YEAR
ORDER BY COUNT(*) DESC
LIMIT 1

-- 5
select m.name, STRING_AGG(mg.genre, ', ') from movies m
join movies_genres mg on mg.movie_id = m.id
GROUP BY m.name
