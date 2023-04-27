view: schedules {
  sql_table_name: suridata_portal.schedules ;;
  drill_fields: [schedule_id]

  dimension: schedule_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.schedule_id ;;
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

  dimension: date_table {
    type: string
    sql: ${TABLE}.date_table ;;
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

  dimension: next_steps {
    type: string
    sql: ${TABLE}.next_steps ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }

  dimension: note_suridata {
    type: string
    sql: ${TABLE}.note_suridata ;;
  }

  dimension: participants {
    type: string
    sql: ${TABLE}.participants ;;
  }

  dimension: schedule {
    type: string
    sql: ${TABLE}.schedule ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [schedule_id, users.id, users.name]
  }
}
