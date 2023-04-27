view: allowed_domains {
  sql_table_name: suridata_portal.allowed_domains ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
