# The name of this view in Looker is "Other Shows Sales"
view: other_shows_sales {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Orders.Other_shows_sales`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Event" in Explore.

  dimension: event {
    type: string
    sql: ${TABLE}.event ;;
  }

  dimension: first_week_tickets_quantity {
    type: number
    sql: ${TABLE}.first_week_tickets_quantity ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_first_week_tickets_quantity {
    type: sum
    sql: ${first_week_tickets_quantity} ;;
  }

  measure: average_first_week_tickets_quantity {
    type: average
    sql: ${first_week_tickets_quantity} ;;
  }

  dimension: last_week_tickets_quantity {
    type: number
    sql: ${TABLE}.last_week_tickets_quantity ;;
  }

  dimension: middle_weeks_quantity {
    type: number
    sql: ${TABLE}.middle_weeks_quantity ;;
  }

  dimension: middle_weeks_tickets_quantity {
    type: number
    sql: ${TABLE}.middle_weeks_tickets_quantity ;;
  }

  dimension: second_week_tickets_quantity {
    type: number
    sql: ${TABLE}.second_week_tickets_quantity ;;
  }

  dimension: shows_quantity {
    type: number
    sql: ${TABLE}.shows_quantity ;;
  }

  dimension: sold_out_flag {
    type: number
    sql: ${TABLE}.sold_out_flag ;;
  }

  dimension: total_tickets_quantity {
    type: number
    sql: ${TABLE}.total_tickets_quantity ;;
  }

  dimension: two_weeks_before_tickets_quantity {
    type: number
    sql: ${TABLE}.two_weeks_before_tickets_quantity ;;
  }

  dimension: venue_capacity {
    type: number
    sql: ${TABLE}.venue_capacity ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
