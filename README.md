# NYC City Bike Analysis — SQL Project
This project contains a full analytical exploration of the New York City Bike (Citi Bike) system using SQL.
The goal of the project is to understand user behavior, bike usage patterns, station issues, monthly trends, and ride durations.
________________________________________
# Project Overview
The analysis answers the following key questions:
 •	What is the most popular type of bike every month?
 •	How many total users use the CityBike system?
 •	What is the overall popularity of each bike type?
 •	What is the difference between started_at and ended_at (ride duration)?
 •	How many times per month does a user ride a bike?
 •	Which month has the peak hour for bike usage?
 •	Station mapping issue: start station name has multiple different coordinates (lat/lng).
 •	What was the longest trip duration recorded?
 •	What is the average trip duration each month?
 •	How many members vs. casual users ride for more than 100 minutes?
 •	How many days are bikes used by members vs. casual users?
 •	How many members and casual users ride between 1 and 60 minutes?
________________________________________
# Technologies Used
 •	SQL (PostgreSQL-flavored queries)
 •	Data source: Citi Bike NYC trip data
 •	Optional tools for visualization: Power BI / Tableau / Python (not required to run SQL)
________________________________________
# Dataset Assumptions
The project uses the standard Citi Bike fields such as:
 •	ride_id
 •	started_at, ended_at
 •	start_station_name, start_lat, start_lng
 •	end_station_name, end_lat, end_lng
 •	rideable_type (bike type)
 •	member_casual (user type)
 •	user_id (if available)
If your dataset uses different names, adjust the queries accordingly.
________________________________________
# Project Goals
The goal of this analysis is to:
 •	Identify main behavioral patterns of NYC bike-share users
 •	Compare casual vs. member usage
 •	Detect anomalies (e.g., station coordinate bugs)
 •	Understand duration, frequency, and monthly seasonality
 •	Build a strong analytical foundation using real-world data and SQL
________________________________________
# How to Run
1. Import the dataset into your SQL environment (SQL server).
2. Run the provided SQL queries from the /queries folder or the main SQL script.
3. Export results into dashboards or visualizations if needed.
________________________________________
# Known Data Issue
Some station names have multiple latitude/longitude pairs.
This is a common Citi Bike data problem due to outdated station coordinates or renaming.
The project includes SQL to detect this issue and recommend a fix using canonical station coordinates.
