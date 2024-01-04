# ETL-Daily-Weather-Forecast

## Scenario
Creation of an automated extract, transform and load (ETL) process to extract daily weather forecasts and observed weather data and load them into an active report that the analysis team will use for further analysis. schedule the process to run automatically, and measure historical forecasting accuracy.
As a proof of concept (POC), to start with you only required to do this for a single station and a single source. For each day at noon (local time), it will collect both the actual temperature and the predicted temperature for noon the following day 


## Project Overview
- Project Overview:
  * Developed an end-to-end ETL process for daily weather data focusing on a single station and source.
  * Automated extraction, transformation, and loading for observed and forecasted data.
- Automation:
  * Implemented an automated schedule to run the ETL process daily at midnight local time.
  * Utilized scheduling tools or cron jobs to ensure timely and consistent execution of the ETL workflow.
- Data Collection:
  * Extracted both observed and forecasted weather data, focusing on actual and predicted temperatures at noon for the following day.
  * Ensured data accuracy and completeness through robust error handling mechanisms.
- Data Transformation:
  * Applied effective data transformation techniques to clean, normalize, and format raw weather data.
  * Addressed missing or inconsistent data points to enhance the overall quality of the dataset.
- Loading and Reporting:
  * Established seamless loading into an active reporting system for easy analysis.

## Data Source
Weather data package provided by the open source project [wittr.in](https://wttr.in/), a web service that provides weather forecast information in a simple and text-based format. For more information about the service, visit the [Github Repo](https://github.com/chubin/wttr.in#readme)


