select *
from My_citiBikeSystem

--Group by every users

select member_casual as "Users Name", count(*) as "Number Users"  
from My_citiBikeSystem
group by member_casual; 

-- Total Users which use CityBike System

SELECT count(*) as "Total_Users"
FROM My_citiBikeSystem
  

select ride_id, (count(*)) as "Ride_ID"
from My_citiBikeSystem
group by ride_id

-- Information about the most popular type of bike

select rideable_type, count(*) as "Number Users" 
from My_citiBikeSystem
where rideable_type is not null
group by rideable_type 
order by rideable_type;


-- Information about the most popular type of bike every month

select rideable_type, (count(*)) as "Number Users" 
from My_citiBikeSystem
where started_at between '2021-02-01' and '2021-02-28'
group by rideable_type
order by count(*);	  


select rideable_type, (count(*)) as "Number Users" 
from My_citiBikeSystem
where started_at between '2021-03-01' and '2021-03-31'
group by rideable_type		
order by count(*);


select rideable_type, (count(*)) as "Number Users" 
from My_citiBikeSystem
where started_at between '2021-04-01' and '2021-04-30'
group by rideable_type
order by count(*);


select rideable_type, (count(*)) as "Number Users" 
from My_citiBikeSystem
where started_at between '2021-05-01' and '2021-05-31'
group by rideable_type
order by (count(*));		


select rideable_type, (count(*)) as "Number Users" 
from My_citiBikeSystem
where started_at between '2021-06-01' and '2021-06-30'
group by rideable_type
order by (count(*)) desc;	



