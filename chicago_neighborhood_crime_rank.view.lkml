view: chicago_neighborhood_crime_rank {
  derived_table: {
    sql: SELECT
        crime_copy.community_area AS crime_copy_community_area,
        CASE
      WHEN crime_copy.community_area = 08 THEN 'Near North Side: Cabrini-Green, The Gold Coast, Goose Island, Magnificent Mile, Old Town, River North, River West, Streeterville'
      WHEN crime_copy.community_area = 32 THEN 'Loop: Loop, Near East Side, South Loop, West Loop Gate'
      WHEN crime_copy.community_area = 33 THEN 'Near South Side: Dearborn Park, Printer\'s Row, South Loop, Prairie Avenue Historic District'
      WHEN crime_copy.community_area = 05 THEN 'North Center: Homer Park, Roscoe Village'
      WHEN crime_copy.community_area = 06 THEN 'Lake View: Boystown, Lake View East, Graceland West, South East Ravenswood, Wrigleyville'
      WHEN crime_copy.community_area = 07 THEN 'Lincoln Park: Old Town Triangle, Park West, Ranch Triangle, Sheffield Neighbors, Wrightwood Neighbors'
      WHEN crime_copy.community_area = 21 THEN 'Avondale: Belmont Gardens, Chicago\'s Polish Village, Kosciuszko Park, Palmer Square'
      WHEN crime_copy.community_area = 22 THEN 'Logan Square: Old Town Triangle, Park West, Ranch Triangle, Sheffield Neighbors, Wrightwood Neighbors'
      WHEN crime_copy.community_area = 01  THEN 'Rogers Park'
      WHEN crime_copy.community_area = 02 THEN 'West Ridge: Arcadia Terrace, Peterson Park, West Rogers Park'
      WHEN crime_copy.community_area = 03 THEN 'Uptown: Buena Park, Argyle Street, Margate Park, Sheridan Park'
      WHEN crime_copy.community_area = 04 THEN 'Lincoln Square: Ravenswood, Ravenswood Gardens, Rockwell Crossing'
      WHEN crime_copy.community_area = 09 THEN 'Edison Park'
      WHEN crime_copy.community_area = 10 THEN 'Norwood Park: Big Oaks, Old Norwood Park, Oriole Park, Union Park'
      WHEN crime_copy.community_area = 11 THEN 'Jefferson Park: Gladstone Park'
      WHEN crime_copy.community_area =12  THEN 'Forest Glen: Edgebrook, Old Edgebrook, South Edgebrook, Sauganash, Wildwood'
      WHEN crime_copy.community_area = 13 THEN 'North Park: Brynford Park, Hollywood Park, River\'s Edge, Sauganash Woods'
      WHEN crime_copy.community_area = 14 THEN 'Albany Park: Mayfair, North Mayfair, Ravenswood Manor'
      WHEN crime_copy.community_area = 76 THEN 'O\'Hare: Schorsch Forest View'
      WHEN crime_copy.community_area = 77 THEN 'Edgewater: Andersonville, Edgewater Glen, Edgewater Beach, Magnolia Glen, Lakewood/Balmoral'
      WHEN crime_copy.community_area = 15 THEN 'Portage Park: Belmont Central, Władysławowo, Six Corners'
      WHEN crime_copy.community_area = 16 THEN 'Irving Park: Avondale Gardens, Independence Park, Kilbourn Park, Little Cassubia, Old Irving Park, Merchant Park, West Walker, The Villa'
      WHEN crime_copy.community_area = 17 THEN 'Dunning: Belmont Heights, Belmont Terrace, Irving Woods, Schorsch Village'
      WHEN crime_copy.community_area = 18 THEN 'Montclaire'
      WHEN crime_copy.community_area = 19 THEN 'Belmont Cragin: Belmont Central, Hanson Park'
      WHEN crime_copy.community_area = 20 THEN 'Hermosa: Belmont Gardens, Kelvyn Park'
      WHEN crime_copy.community_area = 23 THEN 'Humboldt Park'
      WHEN crime_copy.community_area = 24 THEN 'West Town: East Village, Noble Square, Polish Downtown, Pulaski Park, Smith Park, Ukrainian Village, Wicker Park'
      WHEN crime_copy.community_area = 25  THEN 'Austin: Galewood, The Island'
      WHEN crime_copy.community_area = 26  THEN 'West Garfield Park'
      WHEN crime_copy.community_area = 27 THEN 'East Garfield Park: Fifth City'
      WHEN crime_copy.community_area = 28 THEN 'Near West Side: Greektown, Little Italy, Tri-Taylor'
      WHEN crime_copy.community_area = 29 THEN 'North Lawndale: Lawndale, Homan Square, Douglas Park'
      WHEN crime_copy.community_area = 30 THEN 'South Lawndale: Little Village'
      WHEN crime_copy.community_area = 31  THEN 'Lower West Side: Heart of Chicago, Heart of Italy, Pilsen, East Pilsen'
      WHEN crime_copy.community_area = 34  THEN 'Armour Square: Chinatown, Wentworth Gardens, Bridgeport'
      WHEN crime_copy.community_area = 35 THEN 'Douglas: Groveland Park, Lake Meadows, the Gap, Prairie Shores, South Commons'
      WHEN crime_copy.community_area = 36 THEN 'Oakland'
      WHEN crime_copy.community_area = 37 THEN 'Fuller Park'
      WHEN crime_copy.community_area = 38 THEN 'Grand Boulevard: Bronzeville'
      WHEN crime_copy.community_area = 39 THEN 'Kenwood: Kenwood, South Kenwood'
      WHEN crime_copy.community_area = 40 THEN 'Washington Park'
      WHEN crime_copy.community_area = 41 THEN 'Hyde Park: East Hyde Park, Hyde Park'
      WHEN crime_copy.community_area = 42 THEN 'Woodlawn: West Woodlawn'
      WHEN crime_copy.community_area = 43 THEN 'South Shore: Jackson Park Highlands'
      WHEN crime_copy.community_area = 60 THEN 'Bridgeport'
      WHEN crime_copy.community_area =69  THEN 'Greater Grand Crossing: Grand Crossing, Parkway Gardens, Park Manor'
      WHEN crime_copy.community_area = 56  THEN 'Garfield Ridge: LeClaire Courts, Sleepy Hollow, Vittum Park'
      WHEN crime_copy.community_area = 57 THEN 'Archer Heights'
      WHEN crime_copy.community_area = 58 THEN 'Brighton Park'
      WHEN crime_copy.community_area = 59 THEN 'McKinley Park'
      WHEN crime_copy.community_area = 61 THEN 'New City: Back of the Yards, Canaryville'
      WHEN crime_copy.community_area = 62 THEN 'West Elsdon'
      WHEN crime_copy.community_area =63  THEN 'Gage Park'
      WHEN crime_copy.community_area = 64 THEN 'Clearing: Chrysler Village'
      WHEN crime_copy.community_area =65  THEN 'West Lawn: Ford City, West Lawn'
      WHEN crime_copy.community_area = 66 THEN 'Chicago Lawn: Lithuanian Plaza, Marquette Park'
      WHEN crime_copy.community_area =67  THEN 'West Englewood'
      WHEN crime_copy.community_area = 68 THEN 'Englewood'
      WHEN crime_copy.community_area = 44  THEN 'Chatham: East Chatham, West Chatham, West Chesterfield'
      WHEN crime_copy.community_area = 45 THEN 'Avalon Park: Avalon Park, Marynook, Stony Island Park'
      WHEN crime_copy.community_area = 46 THEN 'South Chicago: The Bush'
      WHEN crime_copy.community_area = 47  THEN 'Burnside'
      WHEN crime_copy.community_area = 48 THEN 'Calumet Heights: Pill Hill'
      WHEN crime_copy.community_area = 49  THEN 'Roseland: Fernwood, Rosemoor'
      WHEN crime_copy.community_area = 50 THEN 'Pullman: Cottage Grove Heights, London Towne'
      WHEN crime_copy.community_area =51  THEN 'South Deering: Jeffrey Manor, Trumbull Park'
      WHEN crime_copy.community_area = 52  THEN 'East Side'
      WHEN crime_copy.community_area = 53 THEN 'West Pullman'
      WHEN crime_copy.community_area = 54 THEN 'Riverdale: Altgeld Gardens, Eden Green, Golden Gate'
      WHEN crime_copy.community_area = 55 THEN 'Hegewish'
      WHEN crime_copy.community_area =70  THEN 'Ashburn: Beverly View, Mary Crest, Parkview, Scottsdale, Wrightwood'
      WHEN crime_copy.community_area =71  THEN 'Auburn Gresham'
      WHEN crime_copy.community_area =72  THEN 'Beverly'
      WHEN crime_copy.community_area =73  THEN 'Washington Heights: Brainerd, Longwood Manor, Princeton Park'
      WHEN crime_copy.community_area =74  THEN 'Mount Greenwood: Mount Greenwood Heights, Talley\'s Corner'
      WHEN crime_copy.community_area = 75 THEN 'Morgan Park: Beverly Woods, Kennedy Park, West Morgan Park'
      ELSE 'unknown'
      END AS crime_copy_neighborhoods,
        COUNT(*) AS crime_copy_count
      FROM ChicagoCrime.crime_copy  AS crime_copy

      WHERE
        (crime_copy.community_area > 0) AND NOT (crime_copy.community_area IS NULL)
      GROUP BY 1,2
      ORDER BY 3
      LIMIT 500
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: crime_copy_community_area {
    type: number
    sql: ${TABLE}.crime_copy_community_area ;;
  }

  dimension: crime_copy_neighborhoods {
    type: string
    sql: ${TABLE}.crime_copy_neighborhoods ;;
  }

  dimension: crime_copy_count {
    type: number
    sql: ${TABLE}.crime_copy_count ;;
  }

  set: detail {
    fields: [crime_copy_community_area, crime_copy_neighborhoods, crime_copy_count]
  }
}
