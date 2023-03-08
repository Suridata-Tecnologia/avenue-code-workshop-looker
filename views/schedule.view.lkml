view: schedule {
  sql_table_name: suridata_portal.schedule ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  measure: count {
    type: count
    drill_fields: [id, schedule_company.count]
  }
}
