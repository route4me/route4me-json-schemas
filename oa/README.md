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
- [x] [Feed_all_activity_query.dtd](Feed_all_activity_query.dtd "Query. All OA actions in one feed. Endpoint: /feed/all")
- [x] [Feed_all_activity_response.dtd](Feed_all_activity_response.dtd "Response. All OA actions in one feed. Endpoint: /feed/all")
    - [ ] [Activity_feed_event.dtd](Activity_feed_event.dtd "Sub-schema. Activity feed event")
