view: users {
  sql_table_name: suridata_portal.users ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: access {
    type: number
    sql: ${TABLE}.access ;;
  }

  dimension: birthday {
    type: string
    sql: ${TABLE}.birthday ;;
  }

  dimension: company {
    type: number
    sql: ${TABLE}.company ;;
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

  dimension_group: email_send {
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
    sql: ${TABLE}.email_send_at ;;
  }

  dimension_group: email_verified {
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
    sql: ${TABLE}.email_verified_at ;;
  }

  dimension: has_suriwallet_access {
    type: string
    sql: ${TABLE}.has_suriwallet_access ;;
  }

  dimension: inactive {
    type: number
    sql: ${TABLE}.inactive ;;
  }

  dimension: is_business_user {
    type: number
    sql: ${TABLE}.is_business_user ;;
  }

  dimension: is_suridata_user {
    type: number
    sql: ${TABLE}.is_suridata_user ;;
  }

  dimension: language_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.language_id ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.password ;;
  }

  dimension: received_email {
    type: number
    sql: ${TABLE}.received_email ;;
  }

  dimension: remember_token {
    type: string
    sql: ${TABLE}.remember_token ;;
  }

  dimension: response_date_policy {
    type: string
    sql: ${TABLE}.response_date_policy ;;
  }

  dimension: see_margin {
    type: number
    sql: ${TABLE}.see_margin ;;
  }

  dimension: status_policy {
    type: string
    sql: ${TABLE}.status_policy ;;
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

  dimension: view_dash {
    type: number
    sql: ${TABLE}.view_dash ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      name,
      languages.id,
      languages.name,
      activity_record.count,
      api_refresh_token.count,
      ben_confirm_account_sessions.count,
      ben_contestations.count,
      ben_mail_response_logs.count,
      ben_refresh_tokens.count,
      download_records.count,
      error_occurrence.count,
      logged_ins.count,
      profile_group.count,
      rate.count,
      registers.count,
      relationships.count,
      report_permissions.count,
      schedules.count,
      time.count
    ]
  }
}
