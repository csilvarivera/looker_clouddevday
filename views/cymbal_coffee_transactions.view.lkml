# The name of this view in Looker is "Cymbal Coffee Transactions"
view: cymbal_coffee_transactions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `csr-demo-331013.cymbal_coffee.cymbal_coffee_transactions`
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
    sql: ${TABLE}.Beverage_Category ;;
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
  }

  measure: average_budget_profit {
    type: average
    sql: ${budget_profit} ;;
  }

  dimension: budget_sales {
    type: number
    sql: ${TABLE}.Budget_Sales ;;
  }

  dimension: caffeine_mg {
    type: number
    sql: ${TABLE}.Caffeine_mg ;;
  }

  dimension: calcium_pct_dv {
    type: number
    sql: ${TABLE}.Calcium_pct_dv ;;
  }

  dimension: calories {
    type: number
    sql: ${TABLE}.Calories ;;
  }

  dimension: cholesterol_mg {
    type: number
    sql: ${TABLE}.Cholesterol_mg ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
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
    sql: ${TABLE}.Date ;;
  }

  dimension: dietary_fibre_g {
    type: number
    sql: ${TABLE}.Dietary_Fibre_g ;;
  }

  dimension: iron_pct_dv {
    type: number
    sql: ${TABLE}.Iron_pct_dv ;;
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

  dimension: protein_g {
    type: number
    sql: ${TABLE}.Protein_g ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.Sales ;;
  }

  dimension: saturated_fat_g {
    type: number
    sql: ${TABLE}.Saturated_Fat_g ;;
  }

  dimension: size {
    type: string
    sql: ${TABLE}.Size ;;
  }

  dimension: sodium_mg {
    type: number
    sql: ${TABLE}.Sodium_mg ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  dimension: state_abbv {
    type: string
    sql: ${TABLE}.State_Abbv ;;
  }

  dimension: sugars_g {
    type: number
    sql: ${TABLE}.Sugars_g ;;
  }

  dimension: total_carbohydrates_g {
    type: number
    sql: ${TABLE}.Total_Carbohydrates_g ;;
  }

  dimension: total_fat_g {
    type: number
    sql: ${TABLE}.Total_Fat_g ;;
  }

  dimension: trans_fat_g {
    type: number
    sql: ${TABLE}.Trans_Fat_g ;;
  }

  dimension: unique_beverage {
    type: string
    sql: ${TABLE}.Unique_Beverage ;;
  }

  dimension: vitamin_a_pct_dv {
    type: number
    sql: ${TABLE}.Vitamin_A_pct_dv ;;
  }

  dimension: vitamin_c_pct_dv {
    type: number
    sql: ${TABLE}.Vitamin_C_pct_dv ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
