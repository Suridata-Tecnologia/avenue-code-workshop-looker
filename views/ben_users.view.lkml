view: ben_users {
  sql_table_name: suridata_portal.ben_users ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension_group: birthday {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.birthday ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: code_family {
    type: string
    sql: ${TABLE}.code_family ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}.company ;;
  }

  dimension_group: confirm_account {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.confirm_account_date ;;
  }

  dimension: cpf {
    type: string
    sql: ${TABLE}.cpf ;;
  }

  dimension: cpf_holder {
    type: string
    sql: ${TABLE}.cpf_holder ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: health_id {
    type: number
    sql: ${TABLE}.health_id ;;
  }

  dimension: is_first_access {
    type: yesno
    sql: ${TABLE}.is_first_access ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension_group: policy_term {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.policy_term_date ;;
  }

  dimension: policy_term_status {
    type: string
    sql: ${TABLE}.policy_term_status ;;
  }

  dimension: rules {
    type: string
    sql: ${TABLE}.rules ;;
  }

  dimension: show_values {
    type: yesno
    sql: ${TABLE}.show_values ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.updated_at ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
