view: report_permissions {
  sql_table_name: suridata_portal.report_permissions ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: allowed {
    type: yesno
    sql: ${TABLE}.allowed ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
  }

  dimension: report_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.report_id ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.id, users.name, reports.id]
  }
}
