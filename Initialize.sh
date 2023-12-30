#1- rx_poc.log will be your POC weather report log file
# Create a text file called rx_poc.log
touch rx_poc.log

#2- Add a header to your weather report
echo -e "year\tmonth\tday\thour\tobs_temp\tfc_temp" > rx_poc.log

#3- Create a text file called rx_poc.sh and make it an executable Bash script
touch rx_poc.sh
echo "#! /bin/bash" > rx_poc.sh
chmod u+x rx_poc.sh


#4- create another script to measure and report the accuracy of the forecasted temperatures against the actuals.
touch historical_fc_accuracy.tsv
echo -e "year\tmonth\tday\tobs_temp\tfc_temp\taccuracy\taccuracy_range" > historical_fc_accuracy.tsv

#5- create an executable Bash script called fc_accuracy.sh
touch fc_accuracy.sh

#6- Create a script to report weekly statistics of historical forecasting accuracy
# Begin by creating an executable bash script called weekly_stats.sh
touch weekly_stats.sh
chmod u+x weekly_stats.sh
# Run the following command in the terminal to download the dataset to your current working directory.
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBMSkillsNetwork-LX0117EN-Coursera/labs/synthetic_historical_fc_accuracy.tsv
