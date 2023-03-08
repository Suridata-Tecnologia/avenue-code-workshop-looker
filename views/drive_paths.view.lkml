view: drive_paths {
  sql_table_name: suridata_portal.drive_paths ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
