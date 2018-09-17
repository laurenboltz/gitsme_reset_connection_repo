view: crime_copy {
  view_label: "Chicago Crime"
  sql_table_name: ChicagoCrime.crime_copy ;;

  dimension: arrest {
    type: yesno
    sql: ${TABLE}.arrest ;;
  }

  dimension: beat {
    type: number
    sql: ${TABLE}.beat ;;
  }

  dimension: block {
    type: string
    sql: ${TABLE}.block ;;
  }

  dimension: case_number {
    type: string
    sql: ${TABLE}.case_number ;;
  }

  dimension: community_area {
    type: number
    html: <a href="/dashboards/215?CommunityAreaFilter={{ value }}&Filter2=filter_value>{{ value }}"</a>;;
      sql: ${TABLE}.community_area;;
  }

  dimension: neighborhoods {
    case: {
      when: {
        sql: ${TABLE}.community_area = 08;;
        label: "Near North Side: Cabrini-Green, The Gold Coast, Goose Island, Magnificent Mile, Old Town, River North, River West, Streeterville"
      }
      when: {
        sql: ${TABLE}.community_area = 32;;
        label: "Loop: Loop, Near East Side, South Loop, West Loop Gate"
      }
      when: {
        sql: ${TABLE}.community_area = 33;;
        label: "Near South Side: Dearborn Park, Printer's Row, South Loop, Prairie Avenue Historic District"
      }
      when: {
        sql: ${TABLE}.community_area = 05;;
        label: "North Center: Homer Park, Roscoe Village"
      }
      when: {
        sql: ${TABLE}.community_area = 06;;
        label: "Lake View: Boystown, Lake View East, Graceland West, South East Ravenswood, Wrigleyville"
      }
      when: {
        sql: ${TABLE}.community_area = 07;;
        label: "Lincoln Park: Old Town Triangle, Park West, Ranch Triangle, Sheffield Neighbors, Wrightwood Neighbors"
      }
      when: {
        sql: ${TABLE}.community_area = 21;;
        label: "Avondale: Belmont Gardens, Chicago's Polish Village, Kosciuszko Park, Palmer Square"
      }
      when: {
        sql: ${TABLE}.community_area = 22;;
        label: "Logan Square: Old Town Triangle, Park West, Ranch Triangle, Sheffield Neighbors, Wrightwood Neighbors"
      }
      when: {
        sql: ${TABLE}.community_area = 01 ;;
        label: "Rogers Park"
      }
      when: {
        sql: ${TABLE}.community_area = 02;;
        label: "West Ridge: Arcadia Terrace, Peterson Park, West Rogers Park"
      }

      when: {
        sql: ${TABLE}.community_area = 03;;
        label: "Uptown: Buena Park, Argyle Street, Margate Park, Sheridan Park"
      }
      when: {
        sql: ${TABLE}.community_area = 04;;
        label: "Lincoln Square: Ravenswood, Ravenswood Gardens, Rockwell Crossing"
      }
      when: {
        sql: ${TABLE}.community_area = 09;;
        label: "Edison Park"
      }
      when: {
        sql: ${TABLE}.community_area = 10;;
        label: "Norwood Park: Big Oaks, Old Norwood Park, Oriole Park, Union Park"
      }
      when: {
        sql: ${TABLE}.community_area = 11;;
        label: "Jefferson Park: Gladstone Park"
      }
      when: {
        sql: ${TABLE}.community_area =12 ;;
        label: "Forest Glen: Edgebrook, Old Edgebrook, South Edgebrook, Sauganash, Wildwood"
      }
      when: {
        sql: ${TABLE}.community_area = 13;;
        label: "North Park: Brynford Park, Hollywood Park, River's Edge, Sauganash Woods"
      }
      when: {
        sql: ${TABLE}.community_area = 14;;
        label: "Albany Park: Mayfair, North Mayfair, Ravenswood Manor"
      }
      when: {
        sql: ${TABLE}.community_area = 76;;
        label: "O'Hare: Schorsch Forest View"
      }
      when: {
        sql: ${TABLE}.community_area = 77;;
        label: "Edgewater: Andersonville, Edgewater Glen, Edgewater Beach, Magnolia Glen, Lakewood/Balmoral"
      }
      when: {
        sql: ${TABLE}.community_area = 15;;
        label: "Portage Park: Belmont Central, Władysławowo, Six Corners"
      }
      when: {
        sql: ${TABLE}.community_area = 16;;
        label: "Irving Park: Avondale Gardens, Independence Park, Kilbourn Park, Little Cassubia, Old Irving Park, Merchant Park, West Walker, The Villa"
      }
      when: {
        sql: ${TABLE}.community_area = 17;;
        label: "Dunning: Belmont Heights, Belmont Terrace, Irving Woods, Schorsch Village"
      }
      when: {
        sql: ${TABLE}.community_area = 18;;
        label: "Montclaire"
      }
      when: {
        sql: ${TABLE}.community_area = 19;;
        label: "Belmont Cragin: Belmont Central, Hanson Park"
      }
      when: {
        sql: ${TABLE}.community_area = 20;;
        label: "Hermosa: Belmont Gardens, Kelvyn Park"
      }
      when: {
        sql: ${TABLE}.community_area = 23;;
        label: "Humboldt Park"
      }
      when: {
        sql: ${TABLE}.community_area = 24;;
        label: "West Town: East Village, Noble Square, Polish Downtown, Pulaski Park, Smith Park, Ukrainian Village, Wicker Park"
      }
      when: {
        sql: ${TABLE}.community_area = 25 ;;
        label: "Austin: Galewood, The Island"
      }
      when: {
        sql: ${TABLE}.community_area = 26 ;;
        label: "West Garfield Park"
      }
      when: {
        sql: ${TABLE}.community_area = 27;;
        label: "East Garfield Park: Fifth City"
      }
      when: {
        sql: ${TABLE}.community_area = 28;;
        label: "Near West Side: Greektown, Little Italy, Tri-Taylor"
      }
      when: {
        sql: ${TABLE}.community_area = 29;;
        label: "North Lawndale: Lawndale, Homan Square, Douglas Park"
      }
      when: {
        sql: ${TABLE}.community_area = 30;;
        label: "South Lawndale: Little Village"
      }
      when: {
        sql: ${TABLE}.community_area = 31 ;;
        label: "Lower West Side: Heart of Chicago, Heart of Italy, Pilsen, East Pilsen"
      }
      when: {
        sql: ${TABLE}.community_area = 34 ;;
        label: "Armour Square: Chinatown, Wentworth Gardens, Bridgeport"
      }
      when: {
        sql: ${TABLE}.community_area = 35;;
        label: "Douglas: Groveland Park, Lake Meadows, the Gap, Prairie Shores, South Commons"
      }
      when: {
        sql: ${TABLE}.community_area = 36;;
        label: "Oakland"
      }
      when: {
        sql: ${TABLE}.community_area = 37;;
        label: "Fuller Park"
      }
      when: {
        sql: ${TABLE}.community_area = 38;;
        label: "Grand Boulevard: Bronzeville"
      }
      when: {
        sql: ${TABLE}.community_area = 39;;
        label: "Kenwood: Kenwood, South Kenwood"
      }
      when: {
        sql: ${TABLE}.community_area = 40;;
        label: "Washington Park"
      }
      when: {
        sql: ${TABLE}.community_area = 41;;
        label: "Hyde Park: East Hyde Park, Hyde Park"
      }
      when: {
        sql: ${TABLE}.community_area = 42;;
        label: "Woodlawn: West Woodlawn"
      }
      when: {
        sql: ${TABLE}.community_area = 43;;
        label: "South Shore: Jackson Park Highlands"
      }
      when: {
        sql: ${TABLE}.community_area = 60;;
        label: "Bridgeport"
      }
      when: {
        sql: ${TABLE}.community_area =69 ;;
        label: "Greater Grand Crossing: Grand Crossing, Parkway Gardens, Park Manor"
      }
      when: {
        sql: ${TABLE}.community_area = 56 ;;
        label: "Garfield Ridge: LeClaire Courts, Sleepy Hollow, Vittum Park"
      }
      when: {
        sql: ${TABLE}.community_area = 57;;
        label: "Archer Heights"
      }
      when: {
        sql: ${TABLE}.community_area = 58;;
        label: "Brighton Park"
      }
      when: {
        sql: ${TABLE}.community_area = 59;;
        label: "McKinley Park"
      }
      when: {
        sql: ${TABLE}.community_area = 61;;
        label: "New City: Back of the Yards, Canaryville"
      }
      when: {
        sql: ${TABLE}.community_area = 62;;
        label: "West Elsdon"
      }
      when: {
        sql: ${TABLE}.community_area =63 ;;
        label: "Gage Park"
      }
      when: {
        sql: ${TABLE}.community_area = 64;;
        label: "Clearing: Chrysler Village"
      }
      when: {
        sql: ${TABLE}.community_area =65 ;;
        label: "West Lawn: Ford City, West Lawn"
      }
      when: {
        sql: ${TABLE}.community_area = 66;;
        label: "Chicago Lawn: Lithuanian Plaza, Marquette Park"
      }
      when: {
        sql: ${TABLE}.community_area =67 ;;
        label: "West Englewood"
      }
      when: {
        sql: ${TABLE}.community_area = 68;;
        label: "Englewood"
      }
      when: {
        sql: ${TABLE}.community_area = 44 ;;
        label: "Chatham: East Chatham, West Chatham, West Chesterfield"
        }
      when: {
        sql: ${TABLE}.community_area = 45;;
        label: "Avalon Park: Avalon Park, Marynook, Stony Island Park"
      }
      when: {
        sql: ${TABLE}.community_area = 46;;
        label: "South Chicago: The Bush"
      }
      when: {
        sql: ${TABLE}.community_area = 47 ;;
        label: "Burnside"
      }
      when: {
        sql: ${TABLE}.community_area = 48;;
        label: "Calumet Heights: Pill Hill"
      }
      when: {
        sql: ${TABLE}.community_area = 49 ;;
        label: "Roseland: Fernwood, Rosemoor"
      }
      when: {
        sql: ${TABLE}.community_area = 50;;
        label: "Pullman: Cottage Grove Heights, London Towne"
      }
      when: {
        sql: ${TABLE}.community_area =51 ;;
        label: "South Deering: Jeffrey Manor, Trumbull Park"
      }
      when: {
        sql: ${TABLE}.community_area = 52 ;;
        label: "East Side"
      }
      when: {
        sql: ${TABLE}.community_area = 53;;
        label: "West Pullman"
      }
      when: {
        sql: ${TABLE}.community_area = 54;;
        label: "Riverdale: Altgeld Gardens, Eden Green, Golden Gate"
      }
      when: {
        sql: ${TABLE}.community_area = 55;;
        label: "Hegewish"
      }
      when: {
        sql: ${TABLE}.community_area =70 ;;
        label: "Ashburn: Beverly View, Mary Crest, Parkview, Scottsdale, Wrightwood"
      }
      when: {
        sql: ${TABLE}.community_area =71 ;;
        label: "Auburn Gresham"
      }
      when: {
        sql: ${TABLE}.community_area =72 ;;
        label: "Beverly"
      }
      when: {
        sql: ${TABLE}.community_area =73 ;;
        label: "Washington Heights: Brainerd, Longwood Manor, Princeton Park"
      }
      when: {
        sql: ${TABLE}.community_area =74 ;;
        label: "Mount Greenwood: Mount Greenwood Heights, Talley's Corner"
      }
      when: {
        sql: ${TABLE}.community_area = 75;;
        label: "Morgan Park: Beverly Woods, Kennedy Park, West Morgan Park"
      }
      else: "unknown"
    }
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      day_of_week,
      time_of_day,
      month_name
    ]
    sql: ${TABLE}.date ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: district {
    type: number
    sql: ${TABLE}.district ;;
  }

  dimension: domestic {
    type: yesno
    sql: ${TABLE}.domestic ;;
  }

  dimension: fbi_code {
    type: string
    sql: ${TABLE}.fbi_code ;;
  }

  dimension: iucr {
    type: string
    sql: ${TABLE}.iucr ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: location {
      type: location
      map_layer_name: neighborhoods
      sql_latitude: ${latitude} ;;
      sql_longitude: ${longitude} ;;
      drill_fields: [community_area]
    }

  dimension: location_description {
    type: string
    sql: ${TABLE}.location_description ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: primary_type {
    type: string
    sql: ${TABLE}.primary_type ;;
  }

  dimension: unique_key {
    hidden: yes
    type: number
    sql: ${TABLE}.unique_key ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      day_of_week
    ]
    sql: ${TABLE}.updated_on ;;
  }

  dimension: ward {
    type: number
    sql: ${TABLE}.ward ;;
  }


  dimension: x_coordinate {
    type: number
    hidden: yes
    sql: ${TABLE}.x_coordinate ;;
  }

  dimension: y_coordinate {
    type: number
    hidden: yes
    sql: ${TABLE}.y_coordinate ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [community_area, date_date, primary_type, location, location_description]
  }
}
