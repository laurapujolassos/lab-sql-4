#Lab | SQL Queries 4
# 1. Get film ratings.
select * from sakila.film;
select rating from sakila.film;
#Get release years.
select release_year from sakila.film;
#Get all films with ARMAGEDDON in the title.
select * from sakila.film
where title like '%ARMAGEDDON%'; 
#Get all films with APOLLO in the title
select * from sakila.film
where title like '%APOLLO%'; 
#Get all films which title ends with APOLLO.
select * from sakila.film
where title like '%APOLLO';
#Get all films with word DATE in the title.
select * from sakila.film
where title regexp 'DATE';
#Get 10 films with the longest title.
select* from  sakila.film;
select *, length(title) as 'Title_length' from sakila.film order by title_length desc limit 10;
#Get 10 the longest films.
select * from sakila.film
order by length desc   
limit 10;
#How many films include Behind the Scenes content?
select * from sakila.film;
select * from sakila.film
where special_features like '%Behind the Scenes%'; 
select count(special_features)
from sakila.film
where special_features like '%Behind the Scenes%';
#List films ordered by release year and title in alphabetical order.
select distinct release_year from sakila.film; # there is just 2006 
select * from sakila.film order by title asc; 



