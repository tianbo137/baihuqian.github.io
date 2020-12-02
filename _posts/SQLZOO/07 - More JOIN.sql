--This tutorial introduces the notion of a join. The database consists of three tables movie , actor and casting .
--Table name: movie
| id | title | yr | director | budget | gross |

--Table name: actor
| id | name |

--Table name: casting
| movieid | actorid | ord |

/*1962 movies
1.
List the films where the yr is 1962 [Show id, title]*/
SELECT id, 
       title 
FROM   movie 
WHERE  yr = 1962 

/*When was Citizen Kane released?
2.
Give year of 'Citizen Kane'.*/
SELECT yr 
FROM   movie 
WHERE  title = 'CITIZEN KANE' 

/*Star Trek movies
3.
List all of the Star Trek movies, include the id, title and yr (all of these movies include the words Star Trek in the title). Order results by year.*/
SELECT id, 
       title, 
       yr 
FROM   movie 
WHERE  title LIKE 'Star Trek%' 

/*id for actor Glenn Close
4.
What id number does the actor 'Glenn Close' have?*/
SELECT id 
FROM   actor 
WHERE  NAME = 'Glenn Close' 

/*id for Casablanca
5.
What is the id of the film 'Casablanca'*/
SELECT id 
FROM   movie 
WHERE  title = 'Casablanca' 

/*Cast list for Casablanca
6.
Obtain the cast list for 'Casablanca'.

what is a cast list?
Use movieid=11768, (or whatever value you got from the previous question)*/
SELECT NAME 
FROM   actor 
       JOIN casting 
         ON id = actorid 
WHERE  movieid = 11768 

/*Alien cast list
7.
Obtain the cast list for the film 'Alien'*/
SELECT NAME 
FROM   actor 
       JOIN casting 
         ON id = actorid 
WHERE  movieid = (SELECT id 
                  FROM   movie 
                  WHERE  title = 'Alien') 

/*Harrison Ford movies
8.
List the films in which 'Harrison Ford' has appeared*/
SELECT title 
FROM   movie 
       JOIN casting 
         ON id = movieid 
WHERE  actorid = (SELECT id 
                  FROM   actor 
                  WHERE  NAME = 'Harrison Ford'); 

/*Harrison Ford as a supporting actor
9.
List the films where 'Harrison Ford' has appeared - but not in the starring role. [Note: the ord field of casting gives the position of the actor. If ord=1 then this actor is in the starring role]*/
SELECT title 
FROM   movie 
       JOIN casting 
         ON id = movieid 
WHERE  ord > 1 
       AND actorid = (SELECT id 
                      FROM   actor 
                      WHERE  NAME = 'Harrison Ford'); 

/*Lead actors in 1962 movies
10.
List the films together with the leading star for all 1962 films.*/
SELECT title, 
       NAME 
FROM   movie 
       JOIN casting 
         ON id = movieid 
       JOIN actor 
         ON actor.id = actorid 
WHERE  ord = 1 
       AND yr = 1962; 

/*Busy years for John Travolta
11.
Which were the busiest years for 'John Travolta', show the year and the number of movies he made each year for any year in which he made more than 2 movies.*/
SELECT yr, 
       Count(title) 
FROM   movie 
       JOIN casting 
         ON movie.id = movieid 
       JOIN actor 
         ON actorid = actor.id 
WHERE  NAME = 'John Travolta' 
GROUP  BY yr 
HAVING Count(title) > 2 

/*Lead actor in Julie Andrews movies
12.
List the film title and the leading actor for all of the films 'Julie Andrews' played in.*/
SELECT title, 
       NAME 
FROM   casting 
       JOIN movie 
         ON movieid = movie.id 
       JOIN actor 
         ON actorid = actor.id 
WHERE  movie.id IN (SELECT movieid 
                    FROM   actor 
                           JOIN casting 
                             ON actorid = id 
                    WHERE  NAME = 'Julie Andrews') 
       AND ord = 1 

/*Actors with 30 leading roles
13.
Obtain a list, in alphabetical order, of actors who've had at least 30 starring roles.*/
SELECT NAME 
FROM   casting 
       JOIN actor 
         ON actorid = actor.id 
WHERE  ord = 1 
GROUP  BY actor.id, 
          NAME 
HAVING Count(NAME) >= 30 
ORDER  BY NAME; 

/*14.
List the films released in the year 1978 ordered by the number of actors in the cast, then by title.*/
SELECT title, 
       Count(actorid) 
FROM   movie 
       JOIN casting 
         ON movie.id = movieid 
WHERE  yr = 1978 
GROUP  BY movieid, 
          title 
ORDER  BY Count(actorid) DESC, 
          title; 

/*15.
List all the people who have worked with 'Art Garfunkel'.*/
SELECT NAME 
FROM   casting 
       JOIN actor 
         ON actorid = actor.id 
WHERE  movieid IN (SELECT movieid 
                   FROM   casting 
                          JOIN actor 
                            ON actorid = id 
                   WHERE  NAME = 'Art Garfunkel') 
       AND NAME <> 'Art Garfunkel'; 
