view: report_providers {
  sql_table_name: suridata_portal.report_providers ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: template_url {
    type: string
    sql: ${TABLE}.template_url ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
