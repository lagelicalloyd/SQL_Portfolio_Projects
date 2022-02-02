----Doing some data exploration to see what insights can be gained from the data
--at this stage. Starting with Creating a new table that can summarize the entire yea
----by merging all of the monthly tables (SELECT INTO and UNION ALL functions). 
--Added some new fields for better date breakouts on the records and deleted the locational fields 
--since it had many null values and mismatched formatting. It doesn't look very useful 
--for the business task.

SELECT * INTO dbo.fullyear_2 FROM
(SELECT [ride_id]
      ,[rideable_type]
	  ,[member_casual] AS membership
      ,[started_at] AS pickup
      ,[ended_at] AS dropoff
	  ,DATEDIFF(minute,started_at,ended_at) AS duration
	  ,DATENAME(quarter,started_at) AS quarter
	  ,DATENAME(month, started_at) AS month
	  ,DATENAME(week, started_at) AS week_of_year
	  ,DATENAME(weekday, started_at) AS day_of_week
	  ,DATENAME(hour, started_at) AS hour_of_day
	  ,start_station_id
	  ,start_station_name
	  ,end_station_id
	  ,end_station_name
	  ,start_lat
	  ,start_lng
	  ,end_lat
	  ,end_lng
FROM dbo.tripdata01
UNION ALL
SELECT [ride_id]
      ,[rideable_type]
	  ,[member_casual] AS membership
      ,[started_at] AS pickup
      ,[ended_at] AS dropoff
	  ,DATEDIFF(minute,started_at,ended_at) AS duration
	  ,DATENAME(quarter,started_at) AS quarter
	  ,DATENAME(month, started_at) AS month
	  ,DATENAME(week, started_at) AS week_of_year
	  ,DATENAME(weekday, started_at) AS day_of_week
	  ,DATENAME(hour, started_at) AS hour_of_day
	  ,start_station_id
	  ,start_station_name
	  ,end_station_id
	  ,end_station_name
	  ,start_lat
	  ,start_lng
	  ,end_lat
	  ,end_lng
FROM tripdata02
UNION ALL
SELECT [ride_id]
      ,[rideable_type]
	  ,[member_casual] AS membership
      ,[started_at] AS pickup
      ,[ended_at] AS dropoff
	  ,DATEDIFF(minute,started_at,ended_at) AS duration
	  ,DATENAME(quarter,started_at) AS quarter
	  ,DATENAME(month, started_at) AS month
	  ,DATENAME(week, started_at) AS week_of_year
	  ,DATENAME(weekday, started_at) AS day_of_week
	  ,DATENAME(hour, started_at) AS hour_of_day
	  ,start_station_id
	  ,start_station_name
	  ,end_station_id
	  ,end_station_name
	  ,start_lat
	  ,start_lng
	  ,end_lat
	  ,end_lng
FROM tripdata03
UNION ALL
SELECT [ride_id]
      ,[rideable_type]
	  ,[member_casual] AS membership
      ,[started_at] AS pickup
      ,[ended_at] AS dropoff
	  ,DATEDIFF(minute,started_at,ended_at) AS duration
	  ,DATENAME(quarter,started_at) AS quarter
	  ,DATENAME(month, started_at) AS month
	  ,DATENAME(week, started_at) AS week_of_year
	  ,DATENAME(weekday, started_at) AS day_of_week
	  ,DATENAME(hour, started_at) AS hour_of_day
	  ,start_station_id
	  ,start_station_name
	  ,end_station_id
	  ,end_station_name
	  ,start_lat
	  ,start_lng
	  ,end_lat
	  ,end_lng
FROM tripdata04
UNION ALL
SELECT [ride_id]
      ,[rideable_type]
	  ,[member_casual] AS membership
      ,[started_at] AS pickup
      ,[ended_at] AS dropoff
	  ,DATEDIFF(minute,started_at,ended_at) AS duration
	  ,DATENAME(quarter,started_at) AS quarter
	  ,DATENAME(month, started_at) AS month
	  ,DATENAME(week, started_at) AS week_of_year
	  ,DATENAME(weekday, started_at) AS day_of_week
	  ,DATENAME(hour, started_at) AS hour_of_day
	  ,start_station_id
	  ,start_station_name
	  ,end_station_id
	  ,end_station_name
	  ,start_lat
	  ,start_lng
	  ,end_lat
	  ,end_lng
FROM tripdata05
UNION ALL
SELECT [ride_id]
      ,[rideable_type]
	  ,[member_casual] AS membership
      ,[started_at] AS pickup
      ,[ended_at] AS dropoff
	  ,DATEDIFF(minute,started_at,ended_at) AS duration
	  ,DATENAME(quarter,started_at) AS quarter
	  ,DATENAME(month, started_at) AS month
	  ,DATENAME(week, started_at) AS week_of_year
	  ,DATENAME(weekday, started_at) AS day_of_week
	  ,DATENAME(hour, started_at) AS hour_of_day
	  ,start_station_id
	  ,start_station_name
	  ,end_station_id
	  ,end_station_name
	  ,start_lat
	  ,start_lng
	  ,end_lat
	  ,end_lng
FROM tripdata06
UNION ALL
SELECT [ride_id]
      ,[rideable_type]
	  ,[member_casual] AS membership
      ,[started_at] AS pickup
      ,[ended_at] AS dropoff
	  ,DATEDIFF(minute,started_at,ended_at) AS duration
	  ,DATENAME(quarter,started_at) AS quarter
	  ,DATENAME(month, started_at) AS month
	  ,DATENAME(week, started_at) AS week_of_year
	  ,DATENAME(weekday, started_at) AS day_of_week
	  ,DATENAME(hour, started_at) AS hour_of_day
	  ,start_station_id
	  ,start_station_name
	  ,end_station_id
	  ,end_station_name
	  ,start_lat
	  ,start_lng
	  ,end_lat
	  ,end_lng
FROM tripdata07
UNION ALL
SELECT [ride_id]
      ,[rideable_type]
	  ,[member_casual] AS membership
      ,[started_at] AS pickup
      ,[ended_at] AS dropoff
	  ,DATEDIFF(minute,started_at,ended_at) AS duration
	  ,DATENAME(quarter,started_at) AS quarter
	  ,DATENAME(month, started_at) AS month
	  ,DATENAME(week, started_at) AS week_of_year
	  ,DATENAME(weekday, started_at) AS day_of_week
	  ,DATENAME(hour, started_at) AS hour_of_day
	  ,start_station_id
	  ,start_station_name
	  ,end_station_id
	  ,end_station_name
	  ,start_lat
	  ,start_lng
	  ,end_lat
	  ,end_lng
FROM tripdata08
UNION ALL
SELECT [ride_id]
      ,[rideable_type]
	  ,[member_casual] AS membership
      ,[started_at] AS pickup
      ,[ended_at] AS dropoff
	  ,DATEDIFF(minute,started_at,ended_at) AS duration
	  ,DATENAME(quarter,started_at) AS quarter
	  ,DATENAME(month, started_at) AS month
	  ,DATENAME(week, started_at) AS week_of_year
	  ,DATENAME(weekday, started_at) AS day_of_week
	  ,DATENAME(hour, started_at) AS hour_of_day
	  ,start_station_id
	  ,start_station_name
	  ,end_station_id
	  ,end_station_name
	  ,start_lat
	  ,start_lng
	  ,end_lat
	  ,end_lng
FROM tripdata09
UNION ALL
SELECT [ride_id]
      ,[rideable_type]
	  ,[member_casual] AS membership
      ,[started_at] AS pickup
      ,[ended_at] AS dropoff
	  ,DATEDIFF(minute,started_at,ended_at) AS duration
	  ,DATENAME(quarter,started_at) AS quarter
	  ,DATENAME(month, started_at) AS month
	  ,DATENAME(week, started_at) AS week_of_year
	  ,DATENAME(weekday, started_at) AS day_of_week
	  ,DATENAME(hour, started_at) AS hour_of_day
	  ,start_station_id
	  ,start_station_name
	  ,end_station_id
	  ,end_station_name
	  ,start_lat
	  ,start_lng
	  ,end_lat
	  ,end_lng
FROM tripdata10
UNION ALL
SELECT [ride_id]
      ,[rideable_type]
	  ,[member_casual] AS membership
      ,[started_at] AS pickup
      ,[ended_at] AS dropoff
	  ,DATEDIFF(minute,started_at,ended_at) AS duration
	  ,DATENAME(quarter,started_at) AS quarter
	  ,DATENAME(month, started_at) AS month
	  ,DATENAME(week, started_at) AS week_of_year
	  ,DATENAME(weekday, started_at) AS day_of_week
	  ,DATENAME(hour, started_at) AS hour_of_day
	  ,start_station_id
	  ,start_station_name
	  ,end_station_id
	  ,end_station_name
	  ,start_lat
	  ,start_lng
	  ,end_lat
	  ,end_lng
FROM tripdata11
UNION ALL
SELECT [ride_id]
      ,[rideable_type]
	  ,[member_casual] AS membership
      ,[started_at] AS pickup
      ,[ended_at] AS dropoff
	  ,DATEDIFF(minute,started_at,ended_at) AS duration
	  ,DATENAME(quarter,started_at) AS quarter
	  ,DATENAME(month, started_at) AS month
	  ,DATENAME(week, started_at) AS week_of_year
	  ,DATENAME(weekday, started_at) AS day_of_week
	  ,DATENAME(hour, started_at) AS hour_of_day
	  ,start_station_id
	  ,start_station_name
	  ,end_station_id
	  ,end_station_name
	  ,start_lat
	  ,start_lng
	  ,end_lat
	  ,end_lng
FROM tripdata12) AS TMP

--Changing the data types, so that I can execute different functions on the fields.

ALTER TABLE fullyear_2
ALTER COLUMN ride_id varchar(20);
ALTER TABLE fullyear_2
ALTER COLUMN membership varchar(20);
ALTER TABLE fullyear_2
ALTER COLUMN rideable_type varchar(20)

--total rides in 2021
SELECT COUNT(*) AS Total_Annual_Rides
FROM fullyear_2

--total rides per membership types for 2021 at a glance sorted highest to lowest
SELECT membership as Membership_Group, COUNT(membership) AS Total_Trips
FROM fullyear_2
GROUP BY membership
ORDER BY 2 DESC

-- average duration for rides per membership type in minutes
SELECT membership AS Membership_Group, AVG(duration) AS Avg_Duration_Mins
FROM fullyear_2
GROUP BY membership
ORDER BY 2 DESC

-- longest duration for rides by membership type in hours borrowed
SELECT membership AS Membership_Group, MAX(duration)/60 AS Longest_Trip_in_Hrs
FROM fullyear_2
GROUP BY membership
ORDER BY 2 DESC

--Top 50 Longest bike rentals by membership type (days)
SELECT TOP 50 ride_id AS Longest_Trips_by_tripID, membership AS Membership_Group, DATEDIFF(day,pickup,dropoff) AS Days_Borrowed
FROM fullyear_2
ORDER BY Days_Borrowed DESC

--Top 50 Shortest bike rentals by membership type (days)
SELECT TOP 50 ride_id AS Shortest_Trips_by_TripID, membership AS Membership_Group, DATEDIFF(mi,dropoff, pickup) AS Minutes_Borrowed
FROM fullyear_2
ORDER BY duration 


--total ride time per membership type sorted highest to lowest
SELECT membership AS Membership_Group, SUM(duration) AS Total_Trip_Duration
FROM fullyear_2
GROUP BY membership
ORDER BY 2 DESC

-- Most popular day for annual members to ride 
SELECT TOP 1 day_of_week AS Busiest_Day_Members, COUNT(ride_id) AS Total_Trips_on_Day
FROM fullyear_2
WHERE membership = 'member'
GROUP BY day_of_week
ORDER BY 2 DESC

-- Most popular hour of the day for annual members to ride
SELECT TOP 1 hour_of_day AS Busiest_Hour_Members, COUNT(ride_id) AS Total_Trips_at_Hour
FROM fullyear_2
WHERE membership = 'member'
GROUP BY hour_of_day
ORDER BY 2 DESC

-- Most popular day for casual riders
SELECT TOP 1 day_of_week AS Busiest_Day_Nonmembers, COUNT(ride_id) AS Total_Trips_on_Day
FROM fullyear_2
WHERE membership = 'casual'
GROUP BY day_of_week
ORDER BY 2 DESC

-- Most popular hour of the day for casual riders
SELECT TOP 1 hour_of_day AS Busiest_Hour_Nonmembers, COUNT(ride_id) AS Total_Trips_at_Hour
FROM fullyear_2
WHERE membership = 'casual'
GROUP BY hour_of_day
ORDER BY 2 DESC

-- Most popular weeks of the year for annual members to ride sorted from highest to lowest
SELECT week_of_year AS Busiest_Week_of_Year, COUNT(ride_id) AS Total_Trips
FROM fullyear_2
WHERE membership = 'member'
GROUP BY week_of_year
ORDER BY 2 DESC

-- Most popular 3 months of the year for annual members to ride sorted from highest to lowest
SELECT TOP 3 month AS Busiest_Month_Members, COUNT(ride_id) AS Total_Trips
FROM fullyear_2
WHERE membership = 'member'
GROUP BY month
ORDER BY 2 DESC

-- Most popular bike type for annual members 
SELECT TOP 1 rideable_type AS MostPopular_Bike_Members, COUNT(ride_id) AS Total_Trips
FROM fullyear_2
WHERE membership = 'member'
GROUP BY rideable_type
ORDER BY 2 DESC
 
-- Most popular bike type for casual riders 
SELECT TOP 1 rideable_type AS MostPopular_Bike_Nonmembers, COUNT(ride_id) AS Total_Trips
FROM fullyear_2
WHERE membership = 'casual'
GROUP BY rideable_type
ORDER BY 2 DESC

--totals for each bike type for 2021 sorted most productive to least
SELECT rideable_type AS Bike_Type, COUNT(rideable_type) AS Total_Trips
FROM fullyear_2
GROUP BY rideable_type
ORDER BY 2 DESC

--Total rides by quarter for 2021 sorted highest to lowest
SELECT quarter AS Busiest_Quarters, COUNT(*) AS Total_Trips
FROM fullyear_2
GROUP BY quarter
ORDER BY 2 DESC

--Total rides by month for 2021 sorted highest to lowest
SELECT month AS Busiest_Months, COUNT(*) AS Total_Rides
FROM fullyear_2
GROUP BY month
ORDER BY 2 DESC

--Average duration of all rides in 2021
SELECT AVG(duration) AS Average_Duration_Year
FROM fullyear_2

--Just from theses few queries, we can tell that there are a few
--reasons why a casual user may want a membership!

