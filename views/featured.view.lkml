view: featured {
  sql_table_name: suridata_portal.featured ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension_group: competence {
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
    sql: ${TABLE}.competence ;;
  }

  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}.position ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }

  measure: count {
    type: count
    drill_fields: [id, featured_dowloads.count, rate.count]
  }
}
