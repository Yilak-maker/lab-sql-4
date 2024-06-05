use sakila;
-- 1) get film ratings; 
select rating from film
  group by rating;

-- 2) get releaze years
select release_year from film 
  group by release_year;
  
-- 3 get all films from Armageddon in the title
select * from film
where title regexp "ARMAGEDDON";

-- 4 GET ALL FILMS WITH APPOLO 
SELECT * from film 
 where title regexp 'APOLLO';
 
 -- 5 get all films with title ends with APPOlO
 
 select * from film 
 where title like "%APOLLO";

 -- 6  get all films with word date in the title
 select * from film
 where title regexp 'DATE';
 
 -- just to check the result from regexp and like statement, both gives 7 as output
 select count(*) from film
 where title regexp 'DATE';
 
  select count(*) from film
 where title like '%DATE%';
 
 -- 7 get 10 films with the longest title
 Select title from film
 order by length(title) desc
 limit 10;
 
 -- 8 get 10 longest film
 select title, length from film
  order by length desc 
  limit 10;
  
  -- 9 how many films include Behind the Scene
  Select count(*) as films_with_behind_the_scenes from film
  where special_features like '%Behind the Scenes%';
  
  -- 10 List films ordered by release year and title in alphabetical order.
  
 select release_year,title from film
 order by release_year and title;
  
 
 