view: ge_conditions {
  sql_table_name: suridata_portal.ge_conditions ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: active_by_default {
    type: yesno
    sql: ${TABLE}.active_by_default ;;
  }

  dimension: column_id {
    type: number
    sql: ${TABLE}.column_id ;;
  }

  dimension: column_name {
    type: string
    sql: ${TABLE}.column_name ;;
  }

  dimension: column_slug {
    type: string
    sql: ${TABLE}.column_slug ;;
  }

  dimension: column_type {
    type: string
    sql: ${TABLE}.column_type ;;
  }

  dimension: filter_id {
    type: number
    sql: ${TABLE}.filter_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: operation {
    type: string
    sql: ${TABLE}.operation ;;
  }

  dimension: remove_empty_records {
    type: yesno
    sql: ${TABLE}.remove_empty_records ;;
  }

  dimension: user_input {
    type: yesno
    sql: ${TABLE}.user_input ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, column_name]
  }
}
