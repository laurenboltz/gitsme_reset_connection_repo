connection: "lookerdata_publicdata"

# include all the views
include: "*.view"
# include all views from data blocks
include: "/datablocks_gsod_bq/*.model.lkml"

datagroup: lauren_thesis_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: lauren_thesis_default_datagroup

explore: crime_copy {
  join: bq_zipcode_facts {
    sql_on: ${crime_copy.location} = ${bq_zipcode_facts.location} ;;
    relationship: many_to_one
    type: left_outer
  }

  join: bq_zipcode_county {
    sql_on: ${bq_zipcode_facts.zipcode} = ${bq_zipcode_county.zipcode} ;;
    relationship: many_to_one
    type: left_outer
  }

  join:  bq_zipcode_station {
    sql_on: ${bq_zipcode_county.zipcode} = ${bq_zipcode_station.zipcode} ;;
  type: left_outer
  relationship: many_to_one
  }

  join: bq_gsod {
    sql_on: ${bq_zipcode_station.nearest_station_id} = ${bq_gsod.station_id}
    and ${bq_zipcode_station.year} =${bq_gsod.year} = ;;
    type: left_outer
    relationship: many_to_one
  }
}
