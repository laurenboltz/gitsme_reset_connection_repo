connection: "lookerdata_publicdata"

# include all the views
include: "*.view"
# include all views from data blocks
include: "/lauren_thesis_datablock/*.model.lkml"

datagroup: lauren_thesis_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: lauren_thesis_default_datagroup

explore: crime_copy {}
label: "Chicago Crime"
