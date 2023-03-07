view: ben_contestations {
  sql_table_name: suridata_portal.ben_contestations ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: account_access {
    type: yesno
    sql: ${TABLE}.accountAccess ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: feedback {
    type: string
    sql: ${TABLE}.feedback ;;
  }

  dimension: last_updated_for {
    type: string
    sql: ${TABLE}.last_updated_for ;;
  }

  dimension: params {
    type: string
    sql: ${TABLE}.params ;;
  }

  dimension: reason_cancellation {
    type: string
    sql: ${TABLE}.reason_cancellation ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: status_feedback {
    type: string
    sql: ${TABLE}.status_feedback ;;
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

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  dimension: utilizacao_code {
    type: string
    sql: ${TABLE}.utilizacao_code ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.id, users.name]
  }
}
