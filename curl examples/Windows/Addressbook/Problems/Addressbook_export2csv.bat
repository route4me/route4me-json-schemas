ECHO OFF
SET url=http://www.route4me.com
SET apikey=11111111111111111111111111111111

ECHO ON


::Note - this command doesn't work
curl -o file.csv -g -X POST -H "Content-Type: text/csv" -d'{"ids": [4622366, 4623390, 2640158]}' "%url%/api/csv/address_book.php?api_key=%apikey%"

timeout /t 30