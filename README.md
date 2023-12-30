# ETL-Daily-Weather-Forecast

## Scenario
Creation of an automated extract, transform and load (ETL) process to extract daily weather forecasts and observed weather data and load them into an active report that the analysis team will use for further analysis. schedule the process to run automatically, and measure historical forecasting accuracy.
As a proof of concept (POC), to start with you only required to do this for a single station and a single source. For each day at noon (local time), it will collect both the actual temperature and the predicted temperature for noon the following day 

## Data Source
Weather data package provided by the open source project [wittr.in](https://wttr.in/), a web service that provides weather forecast information in a simple and text-based format. For more information about the service, visit the [Github Repo](https://github.com/chubin/wttr.in#readme)
