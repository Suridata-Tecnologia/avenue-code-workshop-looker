view: sequelizemeta {
  sql_table_name: suridata_portal.sequelizemeta ;;

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
