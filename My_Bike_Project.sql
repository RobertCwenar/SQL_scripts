select *
from MyBikeSystemMonth

--Group by every users

select member_casual as "Users Name", count(*) as "Number Users"  
from MyBikeSystemMonth
group by member_casual; 

-- Total Users which use CityBike System

SELECT count(*) as "Total_Users"
FROM MyBikeSystemMonth

select ride_id, (count(*)) as "Ride_ID"
from MyBikeSystemMonth
group by ride_id

-- Information about the most popular type of bikes

select rideable_type, count(*) as "Number Users" 
from MyBikeSystemMonth
where rideable_type is not null
group by rideable_type 
order by rideable_type;


-- Information about the most popular type of bike every month

select rideable_type, (count(*)) as "Number Users" 
from MyBikeSystemMonth
where started_at between '2021-02-01' and '2021-02-28'
group by rideable_type
order by count(*);	  


select rideable_type, (count(*)) as "Number Users" 
from MyBikeSystemMonth
where started_at between '2021-03-01' and '2021-03-31'
group by rideable_type		
order by count(*);


select rideable_type, (count(*)) as "Number Users" 
from MyBikeSystemMonth
where started_at between '2021-04-01' and '2021-04-30'
group by rideable_type
order by count(*);


select rideable_type, (count(*)) as "Number Users" 
from MyBikeSystemMonth
where started_at between '2021-05-01' and '2021-05-31'
group by rideable_type
order by (count(*));		


select rideable_type, (count(*)) as "Number Users" 
from MyBikeSystemMonth
where started_at between '2021-06-01' and '2021-06-30'
group by rideable_type
order by (count(*)) desc;	

select rideable_type, (count(*)) as "Number Users" 
from MyBikeSystemMonth
where started_at between '2021-07-01' and '2021-07-31'
group by rideable_type
order by (count(*)) desc;

select rideable_type, (count(*)) as "Number Users" 
from MyBikeSystemMonth
where started_at between '2021-08-01' and '2021-08-31'
group by rideable_type
order by (count(*)) desc;

select rideable_type, (count(*)) as "Number Users" 
from MyBikeSystemMonth
where started_at between '2021-09-01' and '2021-09-30'
group by rideable_type
order by (count(*)) desc;

select rideable_type, (count(*)) as "Number Users" 
from MyBikeSystemMonth
where started_at between '2021-10-01' and '2021-10-31'
group by rideable_type
order by (count(*)) desc;


select rideable_type, (count(*)) as "Number Users" 
from MyBikeSystemMonth
where started_at between '2021-11-01' and '2021-11-30'
group by rideable_type
order by (count(*)) desc;

select rideable_type, (count(*)) as "Number Users" 
from MyBikeSystemMonth
where started_at between '2021-12-01' and '2021-12-31'
group by rideable_type
order by (count(*)) desc;


-- Division on every Type of bike in all the months 


select rideable_type, (count(*)) as "Number users", Date_Month
from MyBikeSystemMonth
group by Date_Month, rideable_type
order by  case when date_month = 'February' then 2 
			when date_month = 'March' then 3
			when date_month = 'April' then 4
			when date_month = 'May' then 5
			when date_month = 'June' then 6
			when date_month = 'July' then 7
			when date_month = 'August' then 8
			when date_month = 'September' then 9					
			when date_month = 'October' then 10
			when date_month = 'November' then 11
			when date_month = 'December' then 12 END
						

-- The Most Popular Type of Start_Station 

select top 10 start_station_name, count(*) as "Number of Users"
from MyBikeSystemMonth
group by start_station_name
order by count(*) desc; 

select *
from MyBikeSystemMonth

--The Most Popular Type of End_Station 

select top 10 end_station_name, count(*) as "Number of Users"
from MyBikeSystemMonth
group by end_station_name
order by count(*) desc; 
SELECT ended_at - started_at
from MyBikeSystemMonth

-- Difference between Started_At and Ended_At

SELECT  ended_at - started_at as "Duration"
from MyBikeSystemMonth

-- How many times a month did you use your bikes?	 

SELECT   Date_Month, datediff (minute, started_at, ended_at ) AS "Time Used the bike in Minute" , 
MONTH(started_at)  as "The Number of The Month in Year"  
FROM MyBikeSystemMonth
group by Date_Month, datediff (minute, started_at, ended_at), 
MONTH (started_at)  
order by MONTH(started_at) asc


-- Type diffrenet bike in every Month

select  Date_Month , count (*)  as "Sum use Bike", rideable_type as "Type of Bike"
from MyBikeSystemMonth
group by Date_Month, rideable_type
order by Date_Month desc

--How many hours per month were the bikes used?

SELECT Date_Month, Sum(datediff (HOUR, started_at, ended_at )) AS "Time Used the bike in Hour" 
FROM MyBikeSystemMonth
group by Date_Month
order by  CASE WHEN Date_Month='August' THEN 8
              WHEN Date_Month='November' THEN 11
              WHEN Date_Month='October' THEN 10
              WHEN Date_Month='September' THEN 9
			  When Date_Month = 'February' then 2
			  When Date_Month = 'March' then 3 
			  When Date_Month = 'April' then 4 
			  When Date_Month = 'May' then 5 
			  When Date_Month = 'June' then 6 
			  when Date_Month = 'July' then 7 
			  when Date_Month = 'December' then 12 END

-- Which month was the best for the systemBike in Hour?

SELECT Date_Month, Sum(datediff (HOUR, started_at, ended_at )) AS "Time Used the bike in Hour" 
FROM MyBikeSystemMonth
group by Date_Month
order by Sum(datediff (HOUR, started_at, ended_at))


--Localisation different stations on maps, but start lat and start lng is different from the same start station name, it is bug 

select distinct start_station_name, start_station_id, start_lat, start_lng
from MyBikeSystemMonth

select end_station_name, end_station_id, end_lat, end_lng
from MyBikeSystemMonth;

select *
from MyBikeSystemMonth

-- How many station is in system? 

select count(distinct (start_station_name)) as "Number of start stations in the system"
from MyBikeSystemMonth


select count (distinct end_station_name) as "Number of end stations in the system"
from MyBikeSystemMonth

--What was the duration of the longest trip?

SELECT  top 10 max (datediff (HOUR, started_at, ended_at )) AS "The longest trip in time" ,  Date_Month,
MONTH(started_at)  as "The Number of The Month in Year"  
FROM MyBikeSystemMonth
group by Date_Month, datediff (hour, started_at, ended_at), 
MONTH (started_at)  
order by datediff (hour, started_at, ended_at ) desc
	
-- Table with the longest journey in units of a day for all months

SELECT  Date_Month,max (datediff (DAY, started_at, ended_at )) AS "The longest trip in units of a day"
FROM MyBikeSystemMonth
group by Date_Month, datediff (day, started_at, ended_at) 
order by max (datediff (DAY, started_at, ended_at )) desc

select *
from Longest_trip


-- The average trip in all months 

 select Month, CAST (avg (Time_Used_in_Minutes) as Decimal (10)) as "Average used bikes in units of 'minutes' " 
 from BikesInMinutes
 group by Month 
 order by case when Month = 'February' then 2 
				when Month = 'March' then 3
				when Month = 'April' then 4
				when Month = 'May' then 5
				when Month = 'June' then 6
				when Month = 'July' then 7
				when Month = 'August' then 8
				when Month = 'September' then 9
				when Month = 'October' then 10
				when Month = 'November' then 11
				when Month = 'December' then 12 End 
	


select *
from MyBikeSystemMonth

-- The number of types of bikes used by member and casual users

Select member_casual, rideable_type, count (*) as "Number users"   
from MyBikeSystemMonth
group by member_casual, rideable_type
order by rideable_type asc 

-- How many members or casual users of the bike use the bike for longer than 100 minutes?

SELECT (member_casual), count(*) as "Users which used the bike more than 100 minutes" 
FROM MyBikeSystemMonth
where datediff(Minute, started_at, ended_at) > 100
group by member_casual
order by member_casual

select *
from MyBikeSystemMonth

select *
from BikesInMinutes


-- Total number of bikes used for all months in minutes
select  month, sum(Time_Used_in_Minutes) as "Total time in Months"
from BikesInMinutes
group by month 

-- How many times have bikes been used by members and members in all months?
SELECT Date_Month, Sum(datediff (Hour, started_at, ended_at )) AS "Time Used the bike in Hours", member_casual 
FROM MyBikeSystemMonth
group by Date_Month, member_casual
order by case when Date_Month = 'February' then 2 
				when Date_Month = 'March' then 3
				when Date_Month = 'April' then 4
				when Date_Month = 'May' then 5
				when Date_Month = 'June' then 6
				when Date_Month = 'July' then 7
				when Date_Month = 'August' then 8
				when Date_Month = 'September' then 9
				when Date_Month = 'October' then 10
				when Date_Month = 'November' then 11
				when Date_Month = 'December' then 12 End 


-- How many days are the bikes used by the member and casual users?
select member_casual,  (Sum(datediff (day, started_at, ended_at ))) AS "Time Used the bike in days" 
FROM MyBikeSystemMonth
group by member_casual
order by member_casual desc


-- How many members and casuals use bikes between 1 and 60 minutes? 
select  member_casual,
count (member_casual) as "Number Users",   
DATEDIFF(minute, started_at, ended_at) as "Time Used the bike in minutes"
from MyBikeSystemMonth
where  DATEDIFF(minute, started_at, ended_at) between 1 and 60 
group by member_casual, DATEDIFF(minute, started_at, ended_at)
having count(member_casual) between 1000 and 15000
order by member_casual, [Time Used the bike in minutes] desc

