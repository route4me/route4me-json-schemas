@ECHO OFF
SET url=https://www.route4me.com
SET apikey=11111111111111111111111111111111
SET torouteid=3A2DD89E6E1A044B2098AD1313E3138C
SET routedestinationid=160955261
SET afterdestinationid=161141878

ECHO ON

curl -o file1.txt -g -X POST -sslv3 "%url%/actions/route/move_route_destination.php?api_key=%apikey%&to_route_id=%torouteid%&route_destination_id=%routedestinationid%&after_destination_id=%afterdestinationid%"

timeout /t 30