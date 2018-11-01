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
  join: bq_stations {
    sql_on: ( IF(${crime_copy.latitude}  IS NOT NULL AND ${crime_copy.longitude}  IS NOT NULL, CONCAT(IFNULL
  (SUBSTR(CAST(${crime_copy.latitude}  AS STRING),0, 5)

  , ''),',',IFNULL(SUBSTR(CAST(${crime_copy.longitude}  AS STRING),0,6), '')), NULL))
  =

    (IF(${bq_stations.latitude} IS NOT NULL AND ${bq_stations.longitude} IS NOT NULL,
    CONCAT(IFNULL

    (
    SUBSTR(CAST(${bq_stations.latitude} AS STRING), 0, 5)

    , ''),',',IFNULL(

    SUBSTR(CAST(${bq_stations.longitude} AS STRING), 0, 6)

    , '')), NULL)) ;;
    relationship: many_to_one
    type: left_outer
  }


  join: bq_zipcode_station {
    sql_on: ${bq_zipcode_station.nearest_station_id} = ${bq_stations.station_id} ;;
    type: left_outer
    relationship: many_to_one
  }

  join: bq_gsod {
    sql_on: ${bq_gsod.station_id} = ${bq_zipcode_station.nearest_station_id}
            and ${bq_gsod.weather_date} = ${crime_copy.date_date};;
    type: left_outer
    relationship: many_to_many
  }

  join: derived_table_1 {
    sql_on: ${crime_copy.community_area} = ${derived_table_1.community_area} ;;
    relationship: one_to_one
    type: left_outer
  }

  join: neighborhood_crime_ranks {
    sql_on: ${crime_copy.community_area} = ${neighborhood_crime_ranks.community_area} ;;
    relationship: one_to_one
    type:left_outer
  }

  join: ten_year_community_crime_rank {
    sql_on: ${crime_copy.community_area} = ${ten_year_community_crime_rank.community_area} ;;
    relationship:  one_to_one
    type: left_outer

  }
}

explore: neighborhood_crime_ranks {}
