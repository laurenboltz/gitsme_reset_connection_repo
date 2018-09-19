view: derived_table_1 {
  derived_table: {
    sql: SELECT community_area, AVG(number_of_crimes) OVER() AS average_crimes FROM (SELECT community_area, count(*) as number_of_crimes FROM ChicagoCrime.crime_copy GROUP BY community_area) as table_the group by community_area, number_of_crimes
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: community_area {
    type: number
    sql: ${TABLE}.community_area ;;
  }

  dimension: average_crime_count {
    type: number
    sql: ${TABLE}.average_crimes;;
    value_format_name: decimal_0
  }

  set: detail {
    fields: [community_area, average_crime_count]
  }
}
