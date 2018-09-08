connection: "lookerdata_publicdata"

# include all the views
include: "*.view"
include: "/lauren_thesis_weatherblock/*.view.lkml"

datagroup: lauren_thesis_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: lauren_thesis_default_datagroup

explore: crime_copy {
  join: bq_stations {
    sql_on: ${crime_copy.location} = ${bq_stations.location} ;;
    relationship: one_to_one
  }
}

explore: bq_stations {}

explore: bq_gsod {}

explore: bq_zipcode_county {}

explore: bq_zipcode_facts {}

explore: bq_zipcode_station {}
