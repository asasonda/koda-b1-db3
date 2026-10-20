
-- 1.
select * FROM movies
WHERE year > 2000
ORDER BY YEAR ASC

-- 2.
select last_name from actors
WHERE last_name Ilike '%s'

-- 3.
select * from movies
WHERE 
    rating >= 5 AND rating <=7 AND
    YEAR >= 2004 AND year <= 2006
ORDER BY rating ASC

-- 4.
select count(rating) as jumlah_rating_6 from movies
WHERE rating = 6