@ECHO OFF
SET url=http://www.route4me.com
SET apikey=11111111111111111111111111111111

ECHO ON
curl -o file1.txt -g -X GET "%URL%/api.v4/route.php?api_key=%apikey%&limit=10&offset=0" 

timeout /t 30