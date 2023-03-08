view: ge_chart_colours {
  sql_table_name: suridata_portal.ge_chart_colours ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: colour {
    type: string
    sql: ${TABLE}.colour ;;
  }

  dimension: column_id {
    type: number
    sql: ${TABLE}.column_id ;;
  }

  dimension: column_name {
    type: string
    sql: ${TABLE}.column_name ;;
  }

  dimension: column_slug {
    type: string
    sql: ${TABLE}.column_slug ;;
  }

  dimension: column_type {
    type: string
    sql: ${TABLE}.column_type ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.created_at ;;
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
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [id, column_name]
  }
}
