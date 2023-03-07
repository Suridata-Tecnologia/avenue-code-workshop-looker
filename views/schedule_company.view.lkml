view: schedule_company {
  sql_table_name: suridata_portal.schedule_company ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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

  dimension: last_meeting {
    type: string
    sql: ${TABLE}.last_meeting ;;
  }

  dimension: next_meeting {
    type: string
    sql: ${TABLE}.next_meeting ;;
  }

  dimension: schedule_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.schedule_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, schedule.id]
  }
}
