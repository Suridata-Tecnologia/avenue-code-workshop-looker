view: notifications {
  sql_table_name: suridata_portal.notifications ;;
  drill_fields: [notification_id]

  dimension: notification_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.notification_id ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
  }

  dimension: competence {
    type: string
    sql: ${TABLE}.competence ;;
  }

  dimension_group: date_last_meeting {
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
    sql: ${TABLE}.date_last_meeting ;;
  }

  dimension_group: date_next_meeting {
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
    sql: ${TABLE}.date_next_meeting ;;
  }

  dimension_group: date_problem {
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
    sql: ${TABLE}.date_problem ;;
  }

  dimension: date_table {
    type: string
    sql: ${TABLE}.date_table ;;
  }

  dimension_group: delivered {
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
    sql: ${TABLE}.delivered_date ;;
  }

  dimension: health_id {
    type: number
    sql: ${TABLE}.health_id ;;
  }

  dimension: last_meeting {
    type: string
    sql: ${TABLE}.last_meeting ;;
  }

  dimension: next_meeting {
    type: string
    sql: ${TABLE}.next_meeting ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }

  dimension: note_suridata {
    type: string
    sql: ${TABLE}.note_suridata ;;
  }

  dimension: number_of_lifes {
    type: number
    sql: ${TABLE}.number_of_lifes ;;
  }

  dimension: operator_problem {
    type: number
    sql: ${TABLE}.operator_problem ;;
  }

  dimension: problem {
    type: string
    sql: ${TABLE}.problem ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: [notification_id]
  }
}
