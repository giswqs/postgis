
drop table if exists actor;
create table actor(
 actor_id int primary key,
 first_name varchar(50),
 last_name varchar(50),
 last_update timestamp
);
\copy actor from 'data/actor.csv' delimiter ',' csv header;

drop table if exists rental;
create table rental(
 rental_id int primary key,
 rental_date timestamp,
 inventory_id int,
 customer_id int,
 return_date timestamp,
 staff_id int,
 last_update timestamp
);
\copy rental from 'data/rental.csv' delimiter ',' csv header;

drop table if exists film_actor;
create table film_actor(
 actor_id int,
 film_id int,
 last_update timestamp
);
\copy film_actor from 'data/film_actor.csv' delimiter ',' csv header;

drop table if exists language;
create table language(
 language_id int,
 name varchar(50),
 last_update timestamp
);
\copy language from 'data/language.csv' delimiter ',' csv header;

drop table if exists films;
create table films(
 film_id int primary key,
 title varchar(150),
 description varchar(300),
 release_year int,
 language_id int,
 rental_duration int,
 rental_rate double precision,
 length int,
 replacement_cost double precision,
 rating varchar(50),
 last_update timestamp,
 special_features varchar[],
 full_text varchar(300)
);
\copy films from 'data/films.csv' delimiter ',' csv header;


drop table if exists film_category;
create table film_category(
 film_id float,
 category_id float,
 last_update timestamp
);
\copy film_category from 'data/film_category.csv' delimiter ',' csv header;


drop table if exists category;
create table category(
 category_id int,
 name varchar(50),
 last_update timestamp
);
\copy category from 'data/category.csv' delimiter ',' csv header;
