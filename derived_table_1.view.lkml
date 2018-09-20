view: derived_table_1 {
  derived_table: {
    sql:SELECT community_area, number_of_crimes, RANK() OVER (PARTITION by ' ' ORDER BY number_of_crimes DESC ) AS rank, AVG(number_of_crimes) OVER() AS average_crimes FROM (SELECT community_area, count(*) as number_of_crimes FROM ChicagoCrime.crime_copy WHERE (((crime_copy.date ) >= ((TIMESTAMP_TRUNC(CAST(TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), DAY) AS TIMESTAMP), YEAR))) AND (crime_copy.date ) < ((TIMESTAMP(CONCAT(CAST(DATE_ADD(CAST(TIMESTAMP_TRUNC(CAST(TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), DAY) AS TIMESTAMP), YEAR) AS DATE), INTERVAL 1 YEAR) AS STRING), ' ', CAST(TIME(CAST(TIMESTAMP_TRUNC(CAST(TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), DAY) AS TIMESTAMP), YEAR) AS TIMESTAMP)) AS STRING))))))) AND community_area IS NOT NULL AND community_area > 0 GROUP BY community_area) as table_the group by community_area, number_of_crimes
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: community_area {
    type: number
    html: <a href="https://productday.dev.looker.com/dashboards/215?Community%20Area={{ value }}">{{ value }}</a>;;
    link: {
      label: "Google Search this Neighborhood!"
      url: "https://www.google.com/search?q=chicago+community+area+{{ value }}"
      icon_url: "http://google.com/favicon.ico"
    }
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
