view: suripoint_images {
  sql_table_name: suridata_portal.suripoint_images ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: companies_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.companies_id ;;
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

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }

  dimension: public_url {
    type: string
    sql: ${TABLE}.public_url ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      filename,
      companies.id,
      companies.name,
      companies.nickname,
      companies.pretty_name
    ]
  }
}
