view: bots {
  sql_table_name: suridata_portal.bots ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
  }

  dimension: health_id {
    type: number
    sql: ${TABLE}.health_id ;;
  }

  dimension: login {
    type: string
    sql: ${TABLE}.login ;;
  }

  dimension: main {
    type: string
    sql: ${TABLE}.main ;;
  }

  dimension: operations {
    type: string
    sql: ${TABLE}.operations ;;
  }

  dimension: operator_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.operator_id ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: type_of_access {
    type: string
    sql: ${TABLE}.type_of_access ;;
  }

  measure: count {
    type: count
    drill_fields: [id, operators.id, operators.name, operators.nickname]
  }
}
