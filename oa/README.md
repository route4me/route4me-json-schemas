# JSON Schemas for OA Route4Me API

## analysis : Access to analysis results

- [x] [Analysis_download_report_query.dtd](Analysis_download_report_query.dtd "Query. Download detailed routes analysis reports as csv/xls/pdf file. Endpoint: /analysis/download/report")
- [ ] [Analysis_download_report_response.dtd](Analysis_download_report_response.dtd "Response from downloading of the detailed routes analysis reports as csv/xls/pdf file.")
- [x] [Analysis_get_report_query.dtd](Analysis_get_report_query.dtd "Endpoint: /analysis/report/{report_id}")
- [x] [Analysis_summary_analyzed_route_query](Analysis_summary_analyzed_route_query "Query. Returns detailed analysis summary by analysis route id from OA. Endpoint: /analysis/route/{analyzed_route_id}")
- [x] [Analysis_summary_original_route_query.dtd](Analysis_summary_original_route_query.dtd "Query.Returns detailed analysis summary for Route planned in the Route4Me(or other system). Endpoint: /analysis/summary/{original_route_id}")
- [x] [Analysis_summary_member_query.dtd](Analysis_summary_member_query.dtd "Query. Returns detailed analysis summary for requested member")
- [x] [Analysis_summary_member_response.dtd](Analysis_summary_member_response.dtd "Response. Returns detailed analysis summary for requested member. Endpoint: /analysis/summary")
   - [ ] [Detailed_routes_analysis_response.dtd]( Detailed_routes_analysis_response.dtd "Sub-schema. Routes detailed analysis.")
       - [ ] [Savings.dtd](Savings.dtd "Sub-schema")
   - [ ] [Optimization_scenario.dtd](Optimization_scenario.dtd "Sub-schema. Optimization scenario")
   - [ ] [Assumptions.dtd](Assumptions.dtd "Sub-schema. Assumptions for optimization")
   - [ ] [Savings_summary.dtd](Savings_summary.dtd "Sub-schema. Savings summary")
   - [ ] [Statistics.dtd](Statistics.dtd "Sub-schema")
- [x] [Routes_comparison_download_query.dtd](Routes_comparison_download_query.dtd "Query. Download routes comparison reports as csv or xls file. Endpoint: /analysis/routes_comparison/{analyzed_route_id}/download/report")

## Feed : Activity feeds of OA service
- [x] [Feed_all_activity_query.dtd](Feed_all_activity_query.dtd "Query. All OA actions in one feed. Endpoint: /feed/all") (See curl (cmd) example [here](https://github.com/route4me/route4me-curl/blob/master/Windows/Route4Me%20OA/Activity%20Feed/Feed_all_activity.bat))
- [x] [Feed_all_activity_response.dtd](Feed_all_activity_response.dtd "Response. All OA actions in one feed. Endpoint: /feed/all") (See JSON response file [here](https://github.com/route4me/route4me-curl/blob/master/Windows/Route4Me%20OA/Activity%20Feed/Feed_all_activity_RESPONSE.json))
    - [ ] [Activity_feed_event.dtd](Activity_feed_event.dtd "Sub-schema. Array of the activity feed events")
    - [ ] [Metadata.dtd](Metadata.dtd "Sub-schema. Metadata")
- [x] [Feed_activity_query.dtd](Feed_activity_query.dtd "Query. Get generall information about event by its id. Endpoint: /feed/event/{event_id}") (See curl (cmd) example [here](https://github.com/route4me/route4me-curl/blob/master/Windows/Route4Me%20OA/Activity%20Feed/Feed_activity_event.bat))
- [x] [Feed_activity_response.dtd](Feed_activity_response.dtd "Response. Get generall information about event by its id. Endpoint: /feed/event/{event_id}") (See JSON response file [here](https://github.com/route4me/route4me-curl/blob/master/Windows/Route4Me%20OA/Activity%20Feed/Feed_activity_event_RESPONSE.json))
    - [ ] [Metadata.dtd](Metadata.dtd "Sub-schema. Metadata")
    - [ ] [Activity_feed_event.dtd](Activity_feed_event.dtd "Sub-schema. Activity feed event")
- [x] [Feed_activity_patch.dtd](Feed_activity_patch.dtd "Patch. Hide/unhide wrong events from the feed. Endpoint: /feed/event/{event_id}") (See curl (cmd) example [here](https://github.com/route4me/route4me-curl/blob/master/Windows/Route4Me%20OA/Activity%20Feed/Feed_activity_event_hide.bat))
- [x] [Feed_activity_patch_response.dtd](Feed_activity_patch_response.dtd "Response. Hide/unhide wrong events from the feed. Endpoint: /feed/event/{event_id}") (See JSON response file [here](https://github.com/route4me/route4me-curl/blob/master/Windows/Route4Me%20OA/Activity%20Feed/Feed_activity_event_hide_RESPONSE.json))

## Vehicles Info: Vehicles info from telematics API
- [x] [Vehicles_info_telematis_query.dtd](Vehicles_info_telematis_query.dtd "Query. Returns json with all vehicles from r4m_oa_vehicles table Deprecated. Endpoint: /vehicles_info/all") (See curl (cmd) example [here](https://github.com/route4me/route4me-curl/blob/master/Windows/Route4Me%20OA/Vehicles/Vehicles_info_from_telematics.bat))
- [x] [Vehicle_info_all_response.dtd](Vehicle_info_all_response.dtd "Response. Vehicles info from the telematics vendors. Endpoint: /vehicles_info/all") (See JSON response file [here](https://github.com/route4me/route4me-curl/blob/master/Windows/Route4Me%20OA/Vehicles/Vehicles_info_from_telematics_RESPONSE.json))
    - [ ] [Vehicle_info_response.dtd](Vehicle_info_response.dtd "Sub-schema. Response info of a vehicle")

## Points:  Returns stops, depots and polygons
- [x] [Points_detect_stops.dtd](Points_detect_stops.dtd "POST. Detect stops from raw track. Endpoint: /points/detect-stops") (See curl (cmd) example [here](https://github.com/route4me/route4me-curl/blob/master/Windows/Route4Me%20OA/Points/Points_detect_stops.bat))
    - [ ] [Vehicle_trace.dtd](Vehicle_trace.dtd "JSON input payload. Vehicle trace")
- [x] [Points_detect_stops_response.dtd](Points_detect_stops_response.dtd "Response. Detected stops. Endpoint: /points/detect-stops") (See JSON response file [here](https://github.com/route4me/route4me-curl/blob/master/Windows/Route4Me%20OA/Points/Points_detect_stops_RESPONSE.json))

## Statistics: Different metrics and statistics
- [x] [Statistics_analysis_created.dtd](Statistics_analysis_created.dtd "Query. Statistics for created OA Analysis Sessions. Endpoint: /statistics/analysis-session/created/count-grouped") (See curl (cmd) example [here](https://github.com/route4me/route4me-curl/blob/master/Windows/Route4Me%20OA/Statistics/Statistics_analysis_created.bat))
- [x] [Statistics_analysis_created_response.dtd](Statistics_analysis_created_response.dtd "Response. Statistics of the created analysis. Endpoint: /statistics/analysis-session/created/count-grouped") (See JSON response file [here](https://github.com/route4me/route4me-curl/blob/master/Windows/Route4Me%20OA/Statistics/Statistics_analysis_created_RESPONSE.json))
- [x] [Statistics_depot_detected.dtd](Statistics_depot_detected.dtd "Query. Detected depot statistics. Endpoint: /statistics/depot/detected/count-grouped") (See curl (cmd) example [here](https://github.com/route4me/route4me-curl/blob/master/Windows/Route4Me%20OA/Statistics/Statistics_depots_detected.bat))
- [x] [Statistics_depot_detected_response.dtd](Statistics_depot_detected_response.dtd "Response. Detected depot statistics. Endpoint: /statistics/depot/detected/count-grouped") (See JSON response file [here](https://github.com/route4me/route4me-curl/blob/master/Windows/Route4Me%20OA/Statistics/Statistics_depots_detected_RESPONSE.json))
- [x] [Statistics_received_gps_track.dtd](Statistics_received_gps_track.dtd "Query. Statistics for received GPS Tracks. Endpoint: /statistics/gps-track/received/count-grouped") (See curl (cmd) example [here](https://github.com/route4me/route4me-curl/blob/master/Windows/Route4Me%20OA/Statistics/Statistics_gps_tracks_received.bat))
- [x] [Statistics_received_gps_track_response.dtd](Statistics_received_gps_track_response.dtd "Response. Statistics for received GPS Tracks. Endpoint: /statistics/gps-track/received/count-grouped") (See JSON response file [here](https://github.com/route4me/route4me-curl/blob/master/Windows/Route4Me%20OA/Statistics/Statistics_gps_tracks_received_RESPONSE.json))
- [x] [Statistics_route_destinations_created.dtd](Statistics_route_destinations_created.dtd "Query. Statistics for created Route Destinations. Endpoint: /statistics/route-destination/created/count-grouped") (See curl (cmd) example [here](https://github.com/route4me/route4me-curl/blob/master/Windows/Route4Me%20OA/Statistics/Statistics_route_destinations_created.bat))
- [x] [Statistics_route_destinations_created_response.dtd](Statistics_route_destinations_created_response.dtd "Response. Statistics for created Route Destinations. Endpoint: /statistics/route-destination/created/count-grouped") (See JSON response file [here](https://github.com/route4me/route4me-curl/blob/master/Windows/Route4Me%20OA/Statistics/Statistics_route_destinations_created_RESPONSE.json))
- [x] [Statistics_route_created.dtd](Statistics_route_created.dtd "Query. Statistics for created Routes. Endpoint: /statistics/route/created/count-grouped") (See curl (cmd) example [here](https://github.com/route4me/route4me-curl/blob/master/Windows/Route4Me%20OA/Statistics/Statistics_route_created.bat))
- [x] [Statistics_route_created_response.dtd](Statistics_route_created_response.dtd "Response. Statistics for created Routes. Endpoint: /statistics/route/created/count-grouped") (See JSON response file [here](https://github.com/route4me/route4me-curl/blob/master/Windows/Route4Me%20OA/Statistics/Statistics_route_created_RESPONSE.json))
