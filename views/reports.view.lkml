view: reports {
  sql_table_name: suridata_portal.reports ;;
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

  dimension: first_code {
    type: string
    sql: ${TABLE}.first_code ;;
  }

  dimension: language_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.language_id ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}.product ;;
  }

  dimension: provider_id {
    type: number
    sql: ${TABLE}.provider_id ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}.role ;;
  }

  dimension: second_code {
    type: string
    sql: ${TABLE}.second_code ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }

  measure: count {
    type: count
    drill_fields: [id, languages.id, languages.name, report_permissions.count]
  }
}
