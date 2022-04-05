# The name of this view in Looker is "Cymbal Coffee Data"
view: cymbal_coffee_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `csr-demo-331013.cymbal_coffee.cymbal_coffee_data`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Beverage" in Explore.

  dimension: beverage {

    type: string
    sql: ${TABLE}.Beverage ;;
  }

  dimension: beverage_category {
    type: string
    drill_fields: [beverage]
    sql: ${TABLE}.Beverage_Category ;;
    html: {% if value == 'Coffee' %}
    <p><img src="https://img.icons8.com/?id=wk950Iq6BGSS&size=1x&color=000000" height=15 width=15>{{ rendered_value }}</p>
    {% elsif value == 'Espresso' %}
    <p><img src="https://img.icons8.com/?id=U3GRohViMawi&size=1x&color=000000" height=15 width=15>{{ rendered_value }}</p>
    {% elsif value == 'Smoothies' %}
    <p><img src="https://img.icons8.com/?id=48R77OoEFIGI&size=1x&color=000000" height=15 width=15>{{ rendered_value }}</p>
    {% else %}
    <p><img src="https://img.icons8.com/?id=O6fXkIryBwI4&size=1x&color=000000" height=15 width=15>{{ rendered_value }}</p>
    {% endif %}
    ;;
  }

  dimension: beverage_dietary_info__caffeine_mg {
    type: number
    sql: ${TABLE}.Beverage_Dietary_Info.Caffeine_mg ;;
    group_label: "Beverage Dietary Info"
    group_item_label: "Caffeine Mg"
  }

  dimension: beverage_dietary_info__calcium_pct_dv {
    type: number
    sql: ${TABLE}.Beverage_Dietary_Info.Calcium_pct_dv ;;
    group_label: "Beverage Dietary Info"
    group_item_label: "Calcium Pct Dv"
  }

  dimension: beverage_dietary_info__calories {
    type: number
    sql: ${TABLE}.Beverage_Dietary_Info.Calories ;;
    group_label: "Beverage Dietary Info"
    group_item_label: "Calories"
  }

  dimension: beverage_dietary_info__cholesterol_mg {
    type: number
    sql: ${TABLE}.Beverage_Dietary_Info.Cholesterol_mg ;;
    group_label: "Beverage Dietary Info"
    group_item_label: "Cholesterol Mg"
  }

  dimension: beverage_dietary_info__dietary_fibre_g {
    type: number
    sql: ${TABLE}.Beverage_Dietary_Info.Dietary_Fibre_g ;;
    group_label: "Beverage Dietary Info"
    group_item_label: "Dietary Fibre G"
  }

  dimension: beverage_dietary_info__iron_pct_dv {
    type: number
    sql: ${TABLE}.Beverage_Dietary_Info.Iron_pct_dv ;;
    group_label: "Beverage Dietary Info"
    group_item_label: "Iron Pct Dv"
  }

  dimension: beverage_dietary_info__protein_g {
    type: number
    sql: ${TABLE}.Beverage_Dietary_Info.Protein_g ;;
    group_label: "Beverage Dietary Info"
    group_item_label: "Protein G"
  }

  dimension: beverage_dietary_info__saturated_fat_g {
    type: number
    sql: ${TABLE}.Beverage_Dietary_Info.Saturated_Fat_g ;;
    group_label: "Beverage Dietary Info"
    group_item_label: "Saturated Fat G"
  }

  dimension: beverage_dietary_info__sodium_mg {
    type: number
    sql: ${TABLE}.Beverage_Dietary_Info.Sodium_mg ;;
    group_label: "Beverage Dietary Info"
    group_item_label: "Sodium Mg"
  }

  dimension: beverage_dietary_info__sugars_g {
    type: number
    sql: ${TABLE}.Beverage_Dietary_Info.Sugars_g ;;
    group_label: "Beverage Dietary Info"
    group_item_label: "Sugars G"
  }

  dimension: beverage_dietary_info__total_carbohydrates_g {
    type: number
    sql: ${TABLE}.Beverage_Dietary_Info.Total_Carbohydrates_g ;;
    group_label: "Beverage Dietary Info"
    group_item_label: "Total Carbohydrates G"
  }

  dimension: beverage_dietary_info__total_fat_g {
    type: number
    sql: ${TABLE}.Beverage_Dietary_Info.Total_Fat_g ;;
    group_label: "Beverage Dietary Info"
    group_item_label: "Total Fat G"
  }

  dimension: beverage_dietary_info__trans_fat_g {
    type: number
    sql: ${TABLE}.Beverage_Dietary_Info.Trans_Fat_g ;;
    group_label: "Beverage Dietary Info"
    group_item_label: "Trans Fat G"
  }

  dimension: beverage_dietary_info__vitamin_a_pct_dv {
    type: number
    sql: ${TABLE}.Beverage_Dietary_Info.Vitamin_A_pct_dv ;;
    group_label: "Beverage Dietary Info"
    group_item_label: "Vitamin A Pct Dv"
  }

  dimension: beverage_dietary_info__vitamin_c_pct_dv {
    type: number
    sql: ${TABLE}.Beverage_Dietary_Info.Vitamin_C_pct_dv ;;
    group_label: "Beverage Dietary Info"
    group_item_label: "Vitamin C Pct Dv"
  }

  dimension: beverage_prep {
    type: string
    sql: ${TABLE}.Beverage_Prep ;;
  }

  dimension: budget_profit {
    type: number
    sql: ${TABLE}.Budget_Profit ;;


  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_budget_profit {
    type: sum
    sql: ${budget_profit} ;;
    value_format_name: usd
  }

  measure: average_budget_profit {
    type: average
    sql: ${budget_profit} ;;
    value_format_name: usd

  }

  measure: budget_sales {
    type: sum
    sql: ${TABLE}.Budget_Sales ;;
    value_format_name: usd

  }

  dimension: market {
    type: string
    sql: ${TABLE}.Market ;;
  }

  dimension: market_size {
    type: string
    sql: ${TABLE}.Market_Size ;;
  }

  dimension: milk_option {
    type: string
    sql: ${TABLE}.Milk_Option ;;
  }

  dimension: profit {
    type: number
    sql: ${TABLE}.Profit ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.Sales ;;
  }

  measure: total_sales {
    type: sum
    sql: ${sales} ;;
    value_format_name: usd
  }

  measure: average_sales {
    type: average
    sql: ${sales} ;;
    value_format_name: usd

  }
  measure: total_profit {
    type: sum
    sql: ${profit} ;;
    value_format_name: usd
  }

  measure: average_profit {
    type: average
    sql: ${profit} ;;
    value_format_name: usd
  }

  dimension: size {
    type: string
    sql: ${TABLE}.Size ;;
  }

  dimension: state_abbv {
    type: string
    sql: ${TABLE}.State_Abbv ;;
  }

  dimension: store__city {
    type: string
    sql: ${TABLE}.Store.City ;;
    group_label: "Store"
    group_item_label: "City"
  }

  dimension: store__coordinates {
    type: string
    sql: ${TABLE}.Store.Coordinates ;;
    group_label: "Store"
    group_item_label: "Coordinates"
  }

  dimension: store__country {
    type: string
    sql: ${TABLE}.Store.Country ;;
    group_label: "Store"
    group_item_label: "Country"
  }

  dimension: store__facility_id {
    type: number
    sql: ${TABLE}.Store.Facility_ID ;;
    group_label: "Store"
    group_item_label: "Facility ID"
  }

  dimension: store__food_region {
    type: number
    sql: ${TABLE}.Store.Food_Region ;;
    group_label: "Store"
    group_item_label: "Food Region"
  }

  dimension: store__id {
    type: number
    sql: ${TABLE}.Store.id ;;
    group_label: "Store"
    group_item_label: "ID"
  }

  dimension: store__latitude {
    type: number
    sql: ${TABLE}.Store.Latitude ;;
    group_label: "Store"
    group_item_label: "Latitude"
  }

  dimension: store__longitude {
    type: number
    sql: ${TABLE}.Store.Longitude ;;
    group_label: "Store"
    group_item_label: "Longitude"
  }

  dimension: store__name {
    type: string
    sql: ${TABLE}.Store.Name ;;
    group_label: "Store"
    group_item_label: "Name"
  }

  dimension: store__ownership_type {
    type: string
    sql: ${TABLE}.Store.Ownership_Type ;;
    group_label: "Store"
    group_item_label: "Ownership Type"
  }

  dimension: store__phone_number {
    type: string
    sql: ${TABLE}.Store.Phone_Number ;;
    group_label: "Store"
    group_item_label: "Phone Number"
  }

  dimension: store__state {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.Store.State ;;
    group_label: "Store"
    group_item_label: "State"
  }

  dimension: store__store_features__service {
    type: string
    sql: ${TABLE}.Store.Store_Features.service ;;
    group_label: "Store Store Features"
    group_item_label: "Service"
  }

  dimension: store__store_features__stations {
    type: string
    sql: ${TABLE}.Store.Store_Features.stations ;;
    group_label: "Store Store Features"
    group_item_label: "Stations"
  }

  dimension: store__street_address {
    type: string
    sql: ${TABLE}.Store.Street_Address ;;
    group_label: "Store"
    group_item_label: "Street Address"
  }

  dimension: store__street_line_1 {
    type: string
    sql: ${TABLE}.Store.Street_Line_1 ;;
    group_label: "Store"
    group_item_label: "Street Line 1"
  }

  dimension: store__street_line_2 {
    type: string
    sql: ${TABLE}.Store.Street_Line_2 ;;
    group_label: "Store"
    group_item_label: "Street Line 2"
  }

  dimension: store__venue_type {
    type: string
    sql: ${TABLE}.Store.Venue_Type ;;
    group_label: "Store"
    group_item_label: "Venue Type"
  }

  dimension: store__zip {
    type: string
    map_layer_name: us_zipcode_tabulation_areas
    sql: ${TABLE}.Store.Zip ;;
    group_label: "Store"
    group_item_label: "Zip"
  }

  dimension: store_coordinates{
    type:  location
    sql_latitude: ${store__latitude};;
    sql_longitude: ${store__longitude} ;;
    group_label: "Store"
    group_item_label: "Store Coordinates"

  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: transaction {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Transaction_Date ;;
  }

  measure: count {
    type: count
    drill_fields: [store__name]
  }
}
