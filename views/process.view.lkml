view: process {
  sql_table_name: suridata_portal.process ;;

  dimension: area {
    type: string
    sql: ${TABLE}.area ;;
  }

  dimension: code {
    type: number
    sql: ${TABLE}.code ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
