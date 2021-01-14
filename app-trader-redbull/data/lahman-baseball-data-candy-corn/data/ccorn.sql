--What range of years for baseball games played does the provided database cover?

--select max(finalgame), min(debut)
--from people

/* 1- Find all players in the database who played at Vanderbilt University
   2- Create a list showing each player’s first and last names
   3- as well as the total salary they earned in the major leagues
   4- Sort this list in descending order by the total salary earned
   5- Which Vanderbilt player earned the most money in the majors? 
*/

select *
from collegeplaying
where schoolid = 'vandy'

select*
from people

select schoolid, people.playerid, namelast, namegiven, salary, salaries.yearid
from collegeplaying left join people
on collegeplaying.playerid = people.playerid
left join salaries
on collegeplaying.playerid = salaries.playerid
where schoolid = 'vandy'
order by salary desc



with salery_after_college as (select * 
							  from collegeplaying inner join salaries
							  on collegeplaying.playerid = salaries.playerid 
							  order by collegeplaying.playerid

)

  
