connection: "lookerdata_publicdata"

# include all the views
include: "*.view"
include: "/lauren_thesis_weatherblock/*.view.lkml"

datagroup: lauren_thesis_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}



persist_with: lauren_thesis_default_datagroup

map_layer: neighborhoods {
  url: "https://github.com/laurenboltz/Topo_JSON/blob/master/chicagoneighborhoods.topojson"
}

explore: crime_copy {
  join: bq_stations {
    sql_on: ${crime_copy.location} = ${bq_stations.location} ;;
    relationship: one_to_one
    type: left_outer
  }
}

explore: bq_stations {}

explore: bq_gsod {}

explore: bq_zipcode_county {}

explore: bq_zipcode_facts {}

explore: bq_zipcode_station {}
