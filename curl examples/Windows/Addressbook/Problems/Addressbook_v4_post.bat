ECHO OFF
SET url=http://www.route4me.com
SET apikey=11111111111111111111111111111111

ECHO ON

curl -X POST -H -k "Content-Type: application/json" -d'{"address_group":"","address_alias":"301 MARKET SHELL","address_1":"17205 RICHMOND TNPK, MILFORD, VA, 22514", "address_2":"", "first_name":"", "last_name":"", "address_email":"", "address_phone_number":"804-633-5852", "address_city":"", "address_state_id":"", "address_country_id":"", "address_zip":"", "cached_lat":"38.024654", "cached_lng":"-77.338814", "address_custom_data":{"sales rep id":"545", "sales rep name":"Kellye Foster", "retailer id":"173907"}}' "%url%/api.v4/address_book.php?api_key=%apikey%"

timeout /t 30