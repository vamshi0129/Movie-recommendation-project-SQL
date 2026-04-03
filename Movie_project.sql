--- Movie Recommendation & Rating Analysis System
drop database if exists Movie;
create database Movie;
use Movie;

--Tables
create table users(
    user_id int primary key ,
    name varchar(50),
    age int
);

create table movies(
    movie_id int primary key,
    title varchar(50),
    genre varchar(50)
);

create table ratings(
    user_id int , 
    movie_id int,
    rating decimal(2,1)
);

create table watch_history(
    user_id int,
    movie_id int,
    watch_date date
);

--records
insert into users values(1,'vamshi',22),
                        (2, 'sai', 21),
                        (3, 'priya', 23),
                        (4, 'arjun', 24),
                        (5, 'neha', 22);
insert into movies values(101, 'Kalki 2898 AD','Sci-Fi'),
                         (102, 'Pushpa 2','Action'),
                         (103, 'Jawan','Action'),
                         (104, 'Animal','Action'),
                         (105, 'Stree 2','Comedy'),
                         (106, 'Devara','Thriller'),
                         (107, 'Dhurandhar','Action'),
                         (108, 'Game Changer','Drama');
insert into ratings values  (1, 101, 4.8),
                            (1, 102, 4.5),
                            (1, 103, 4.2),
                            (2, 102, 4.9),
                            (2, 104, 3.8),
                            (2, 108, 4.1),
                            (3, 103, 4.4),
                            (3, 105, 4.8),
                            (3, 107, 3.9),
                            (4, 102, 4.7),
                            (4, 106, 4.0),
                            (5, 101, 4.9),
                            (5, 108, 4.6);
insert into watch_history values(1, 101,'2025-11-10'),
                                (1,102, '2025-12-05'),
                                (1, 103,'2026-01-15'),
                                (1,105, '2026-02-20'),
                                (2,102, '2025-11-18'),
                                (2, 104,'2025-12-22'),
                                (2,106,'2026-01-10'),
                                (2,108, '2026-02-28'),
                                (3, 101,'2025-12-01'),
                                (3, 103, '2026-01-08'),
                                (3,105, '2026-02-14'),
                                (3, 107,'2026-03-10'),
                                (4,102, '2025-12-15'),
                                (4, 104,'2026-01-20'),
                                (4,106,'2026-03-05'),
                                (5, 101, '2026-01-25'),
                                (5, 103,'2026-02-10'),
                                (5,108,'2026-03-28');
--queries

--top rated movies
select m.title , round(avg(r.rating),1) as avg_rating
from movies m
join ratings r on m.movie_id=r.movie_id
group by m.movie_id
order by avg_rating desc;

--most popular genres
select genre, count(*) as count
from movies m
join ratings r on m.movie_id=r.movie_id
group by genre  
order by count desc;

--Recommend movies based on similar users

select distinct m.title
from watch_history wh1
join watch_history wh2 
on wh1.movie_id=wh2.movie_id 
and wh1.user_id != wh2.user_id
join movies m on wh2.movie_id=m.movie_id
where wh1.user_id=1 ;

--user behavior analysis
select u.name, count(*) as movies_watched
from users u
join watch_history wh on u.user_id=wh.user_id
group by u.user_id
order by movies_watched desc;

--trending movies
select m.title, count(*) as watch_count
from watch_history wh
join movies m on wh.movie_id=m.movie_id
where wh.watch_date >= date_sub(curdate(), interval 30 day)
group by m.movie_id
order by watch_count desc;