view: error_occurrence {
  sql_table_name: suridata_portal.error_occurrence ;;

  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.date ;;
  }

  dimension: error_amount {
    type: number
    sql: ${TABLE}.error_amount ;;
  }

  dimension: error_id {
    type: number
    sql: ${TABLE}.error_id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [users.id, users.name]
  }
}
