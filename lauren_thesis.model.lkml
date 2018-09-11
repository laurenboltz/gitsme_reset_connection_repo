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
  url: "https://raw.githubusercontent.com/laurenboltz/JSON_Stuff/master/ChicagoNeighborhoods.topoJSON"
}

explore: crime_copy {
  join: community_area_facts {
    sql_on: ${crime_copy.community_area} = ${community_area_facts.community_area} ;;
    relationship: one_to_one
    type: left_outer
  }
}


explore: bq_stations {}

explore: bq_gsod {}

explore: bq_zipcode_county {}

explore: bq_zipcode_station {}
