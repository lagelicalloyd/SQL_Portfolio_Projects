# Data Exploration in SQL Server - CASE STUDY 1 - Cyclistic, a bike-share company 
**Business Task**
Develop compelling data insights about the past 12 months of bike-share trips
 for Cyclistic, a bike-share company in Chicago. Explore insights to help a marketing team
recommend a new marketing strategy to convert casual riders into annual members.

**Three questions that will guide the future marketing program: **
1. How do annual members and casual riders use Cyclistic bikes differently? 
2. Why would casual riders buy Cyclistic annual memberships? 
3. How can Cyclistic use digital media to influence casual riders to become members?

**Specifications**
Data Sources: Twelve separate .csv files record every ride occurring in the most recent 12 months. 
Those CSV files were used as a source for the SQL 
query file and the results text report that you can find in the attached repository. 
The primary key of each file is the unique id string for the ride indicated in the "ride_id" field.
Each source record in the source files contained the following fields:

ride_id	 - unique identifier for each ride.
rideable_type	- electric, classic, or docked bike type. 
Started_at - start date and time  (m/dd/yyy h:mm)
Ended_at - end date and time  (m/dd/yyy h:mm)	
Start_station_name - origin station
start_station_id - unique identifier for station
End_station_name - destination station
End_station_id - unique identifier for station	
Start_lat - latitude of ride origin
Start_lng - longitude of ride origin
End_lat - latitude of ride destination
End_lng - longitude of ride destination
Member_casual - indicates whether the record was for an annual member or casual user.


**Data Exploration Process with Microsoft Excel and SQL Server:****
Original data sources were transformed from comma-separated values (.csv) into the .xls file type. 
Then, I manipulated the data in Microsoft Excel. Personal identifying information and customers' privacy were protected
by omitting that information from the data sources of this project.
I conducted data transformation, cleaning, and aggregation using Microsoft Excel Power Query. 
With attention to detail, I used conditional formatting and filters to find duplicates and errors in the data. 
Also, several columns were added using arithmetic formulas and specific functions to identify 
further details and insights about each distinct record, including the day of the week, 
week of the year, month name, the quarter of the year, and duration of each ride. 
Several records did not contain destination location data or had varying formats for 
the station identifier, so I may not include locational data in this analysis. 
Later, because the files were huge and loading slow, I decided to import them into Microsoft SQL Server Management Studio to explore the data further. 
You can see the data and statistical and descriptive insights that I quickly pulled in the query and the results report files.
My next project will include analyzing data more thoroughly and visualizing it in Power BI or Tableau.
