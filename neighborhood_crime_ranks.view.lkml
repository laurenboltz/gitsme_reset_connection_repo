view: neighborhood_crime_ranks {
  derived_table: {
    sql: SELECT * -- Final select so we can filter for top 5 ranked crimes in a neighborhood

      FROM (
            (SELECT  -- This finds the rank and average of number of crimes (using a window function to partition over the neighborhoods)
              community_area,
               number_of_crimes,
                primary_type,
               RANK() OVER (PARTITION by community_area ORDER BY number_of_crimes DESC ) AS rank,
               AVG(number_of_crimes) OVER() AS average_crimes
            FROM
                  -- Innermost table to find the count of crimes as a non-aggregate (so we can take an average)
                      (SELECT community_area,
                        primary_type,
                        count(*) as number_of_crimes
                      FROM ChicagoCrime.crime_copy
                              WHERE (((crime_copy.date ) >= ((TIMESTAMP_TRUNC(CAST(TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), DAY) AS TIMESTAMP), YEAR))) AND (crime_copy.date ) < ((TIMESTAMP(CONCAT(CAST(DATE_ADD(CAST(TIMESTAMP_TRUNC(CAST(TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), DAY) AS TIMESTAMP), YEAR) AS DATE), INTERVAL 1 YEAR) AS STRING), ' ', CAST(TIME(CAST(TIMESTAMP_TRUNC(CAST(TIMESTAMP_TRUNC(CURRENT_TIMESTAMP(), DAY) AS TIMESTAMP), YEAR) AS TIMESTAMP)) AS STRING))))))) AND community_area IS NOT NULL AND community_area > 0
                          GROUP BY community_area, primary_type

              ) as table_the
              group by community_area, number_of_crimes, primary_type
              order by 1, rank


            )) as thetable
      WHERE rank <= 5
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
  dimension: number_of_crimes {
    type: number
    sql: ${TABLE}.number_of_crimes ;;
  }

  dimension: primary_type {
    type: string
    sql: ${TABLE}.primary_type ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: average_crimes {
    type: number
    sql: ${TABLE}.average_crimes ;;
  }

  set: detail {
    fields: [community_area, number_of_crimes, primary_type, rank, average_crimes]
  }
}
