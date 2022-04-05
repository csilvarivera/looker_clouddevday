# The name of this view in Looker is "Cymbal Coffee Locations"
view: cymbal_coffee_locations {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `csr-demo-331013.cymbal_coffee.cymbal_coffee_locations`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "City" in Explore.

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: coordinates {
    type: string
    sql: ${TABLE}.Coordinates ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }

  dimension: facility_id {
    type: number
    sql: ${TABLE}.Facility_ID ;;
  }

  dimension: features_service {
    type: string
    sql: ${TABLE}.Features_Service ;;
  }

  dimension: features_stations {
    type: string
    sql: ${TABLE}.Features_Stations ;;
  }

  dimension: food_region {
    type: number
    sql: ${TABLE}.Food_Region ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.Latitude ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.Location ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.Longitude ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: ownership_type {
    type: string
    sql: ${TABLE}.Ownership_Type ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.Phone_Number ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: store_number {
    type: number
    sql: ${TABLE}.Store_Number ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_store_number {
    type: sum
    sql: ${store_number} ;;
  }

  measure: average_store_number {
    type: average
    sql: ${store_number} ;;
  }

  dimension: street_address {
    type: string
    sql: ${TABLE}.Street_Address ;;
  }

  dimension: street_line_1 {
    type: string
    sql: ${TABLE}.Street_Line_1 ;;
  }

  dimension: street_line_2 {
    type: string
    sql: ${TABLE}.Street_Line_2 ;;
  }

  dimension: venue_type {
    type: string
    sql: ${TABLE}.Venue_Type ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.Zip ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
