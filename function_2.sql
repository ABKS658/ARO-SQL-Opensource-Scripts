create or replace function find_film_by_id(p_film_id int)
returns varchar
language plpgsql
as $$
declare
   film_title film.title%type;
begin
  -- find film title by id
  select title 
  into film_title
  from film
  where film_id = p_film_id;
  
  if not found then
     raise 'Film with id % not found', p_film_id;
  end if;
  
  return title;
  
end;$$