# ETL_solarpower_weather
ETL project to create a relational database containing historic weather data and two unique solar arrays in MN

# Project Title:        
Weather & Solar Energy Collection: AKA “Watt’s Up with Solar Energy”

# Team Members:    
Brian Beck, Ashley Karlsson, Jack Langree, Andrew Lindberg, and Kate Mikkelson

# Project Proposal:    
Scrape historical data from personal home solar panels. 
Get historical weather data from OpenWeather.
Combine datasets into a relational database to be used.

# Project Write-Up: 

# Sources of Data:
> - Minneapolis, MN solar panel API (SolarEdge) JSON to CSV via API calls
The notebook ‘solaredgePY_API-call’ was used to run API calls to the solaredge site. Care had to be taken to not breach the API call limits. 
> - Ogilvie, MN solar panel API (Enphase) CSV 
This was downloaded in bulk from Enphase’s monitoring site.
> - OpenWeather Historical Weather Data CSV
This was downloaded in bulk from OpenWeather for lat/long (44.9973, -93.2655) which is Northeast Minneapolis

# Transformations:
Cleaning timestamps by defining a timestamp function and setting up a list to loop through and apply the function to format all dates
Removing unnecessary columns from the weather dataset to reduce the amount of data stored in the final database. 
Converting temperature from Kelvin to Fahrenheit 
Converting data in the Minneapolis solar dataset from watts to watt hours and cumulative watt hours so both solar datasets contain the same information.

# Type of Final Database:
Relational database in PostgreSQL
The transformed datasets were loaded into the PostgreSQL database within Jupyter Notebook using SQLAlchemy. 

# Final Tables or Collections:
The final tables in the database include solar data from Minneapolis (solar_minneapolis), solar data from Ogilvie (solar_ogilvie), and Minneapolis weather (weather). 
The date field was used as the primary key to relate the weather and solar data tables.
# Breakdown of Work:

> Jack:
> - - Data transformation - Minneapolis Solar Panel 
> - - Data Timestamp guru

> Ashley:
> - - Data extraction of Ogilvie Solar Array
> - - Data transformation

> Brian:
> - - Transformation of Weather Data
> - - Schema editing
> - - Portions of ETL writeup

> Kate:
> - - Entity Relationship Diagram & Initial Schema Set-Up
> - - Documentation Set-up
> - - Puns

> Andy:
> - - Data extraction of Minneapolis Solar Array
> - - Data transformation


