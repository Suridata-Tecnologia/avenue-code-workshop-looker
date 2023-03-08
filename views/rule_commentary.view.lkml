view: rule_commentary {
  sql_table_name: suridata_portal.rule_commentary ;;

  dimension: commentary {
    type: string
    sql: ${TABLE}.commentary ;;
  }

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

  dimension: rule {
    type: string
    sql: ${TABLE}.rule ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
