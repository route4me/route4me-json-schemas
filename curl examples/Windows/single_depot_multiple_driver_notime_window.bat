@ECHO OFF
:: Single Depot, Multiple Driver, No Time Window
:: Please put real value in route_date

SET URL=https://www.route4me.com/api.v4/optimization_problem.php
SET apikey=11111111111111111111111111111111

ECHO ON

curl -o file1.txt -g -X POST -k -d "@single_depot_multiple_driver_notime_window_data.json" "%URL%?api_key=%apikey%" 

timeout /t 30