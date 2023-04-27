view: readjustment_history_suridata {
  sql_table_name: suridata_portal.readjustment_history_suridata ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: adjustment_applied {
    type: number
    sql: ${TABLE}.adjustment_applied ;;
  }

  dimension_group: adjustment {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.adjustment_date ;;
  }

  dimension_group: application {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.application_date ;;
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

  dimension: health_id {
    type: number
    sql: ${TABLE}.health_id ;;
  }

  dimension: requested_adjustment {
    type: number
    sql: ${TABLE}.requested_adjustment ;;
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

  measure: count {
    type: count
    drill_fields: [id]
  }
}
