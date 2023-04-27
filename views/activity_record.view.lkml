view: activity_record {
  sql_table_name: suridata_portal.activity_record ;;
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

  dimension: note {
    type: string
    sql: ${TABLE}.note ;;
  }

  dimension: operation {
    type: string
    sql: ${TABLE}.operation ;;
  }

  dimension: operator_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.operator_id ;;
  }

  dimension: table {
    type: string
    sql: ${TABLE}.`table` ;;
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

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      users.id,
      users.name,
      operators.id,
      operators.name,
      operators.nickname
    ]
  }
}
