view: companies {
  sql_table_name: suridata_portal.companies ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: access_passwords {
    type: string
    sql: ${TABLE}.access_passwords ;;
  }

  dimension: action_plan_date {
    type: string
    sql: ${TABLE}.action_plan_date ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: audit_date {
    type: string
    sql: ${TABLE}.audit_date ;;
  }

  dimension: audit_flow {
    type: number
    sql: ${TABLE}.audit_flow ;;
  }

  dimension: audit_interval {
    type: number
    sql: ${TABLE}.audit_interval ;;
  }

  dimension: bi {
    type: number
    sql: ${TABLE}.bi ;;
  }

  dimension: billing_product {
    type: string
    sql: ${TABLE}.billing_product ;;
  }

  dimension: bot_key {
    type: string
    sql: ${TABLE}.bot_key ;;
  }

  dimension: breakeven {
    type: string
    sql: ${TABLE}.breakeven ;;
  }

  dimension: cell_phone_contact_in_health_brokerage {
    type: string
    sql: ${TABLE}.cell_phone_contact_in_health_brokerage ;;
  }

  dimension: cell_phone_contact_in_operator {
    type: string
    sql: ${TABLE}.cell_phone_contact_in_operator ;;
  }

  dimension: cell_phone_contact_in_technical_area {
    type: string
    sql: ${TABLE}.cell_phone_contact_in_technical_area ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: client_carrier {
    type: number
    sql: ${TABLE}.client_carrier ;;
  }

  dimension: client_suridata {
    type: number
    sql: ${TABLE}.client_suridata ;;
  }

  dimension: cnae {
    type: string
    sql: ${TABLE}.cnae ;;
  }

  dimension: cnae_text {
    type: string
    sql: ${TABLE}.cnae_text ;;
  }

  dimension: cnpj {
    type: string
    sql: ${TABLE}.cnpj ;;
  }

  dimension: commercial_phone_contact_in_health_brokerage {
    type: string
    sql: ${TABLE}.commercial_phone_contact_in_health_brokerage ;;
  }

  dimension: commercial_phone_contact_in_operator {
    type: string
    sql: ${TABLE}.commercial_phone_contact_in_operator ;;
  }

  dimension: commercial_phone_contact_in_technical_area {
    type: string
    sql: ${TABLE}.commercial_phone_contact_in_technical_area ;;
  }

  dimension: complement {
    type: string
    sql: ${TABLE}.complement ;;
  }

  dimension_group: complete_audit {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.complete_audit_date ;;
  }

  dimension: contract_term {
    type: string
    sql: ${TABLE}.contract_term ;;
  }

  dimension: coparticipation {
    type: string
    sql: ${TABLE}.coparticipation ;;
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

  dimension: dashboard_param {
    type: string
    sql: ${TABLE}.dashboard_param ;;
  }

  dimension: dependent_ages {
    type: string
    sql: ${TABLE}.dependent_ages ;;
  }

  dimension: deployment_fee {
    type: number
    sql: ${TABLE}.deployment_fee ;;
  }

  dimension: discount_percent {
    type: number
    sql: ${TABLE}.discount_percent ;;
  }

  dimension: discount_value {
    type: number
    sql: ${TABLE}.discount_value ;;
  }

  dimension: drive_path {
    type: string
    sql: ${TABLE}.drive_path ;;
  }

  dimension: eligibility {
    type: string
    sql: ${TABLE}.eligibility ;;
  }

  dimension: email_contact_in_health_brokerage {
    type: string
    sql: ${TABLE}.email_contact_in_health_brokerage ;;
  }

  dimension: email_contact_in_operator {
    type: string
    sql: ${TABLE}.email_contact_in_operator ;;
  }

  dimension: email_contact_in_technical_area {
    type: string
    sql: ${TABLE}.email_contact_in_technical_area ;;
  }

  dimension: end_count {
    type: string
    sql: ${TABLE}.end_count ;;
  }

  dimension: finished_search {
    type: string
    sql: ${TABLE}.finished_search ;;
  }

  dimension: has_certificate_management {
    type: number
    sql: ${TABLE}.has_certificate_management ;;
  }

  dimension: has_financial_statements {
    type: number
    sql: ${TABLE}.has_financial_statements ;;
  }

  dimension: has_health_dash {
    type: number
    sql: ${TABLE}.has_health_dash ;;
  }

  dimension: has_nurse_dashboard {
    type: number
    sql: ${TABLE}.has_nurse_dashboard ;;
  }

  dimension: has_odonto_dash {
    type: string
    sql: ${TABLE}.has_odonto_dash ;;
  }

  dimension: has_password_management {
    type: number
    sql: ${TABLE}.has_password_management ;;
  }

  dimension: has_pharmacy_dash {
    type: string
    sql: ${TABLE}.has_pharmacy_dash ;;
  }

  dimension: has_saude_ocupacional_dash {
    type: string
    sql: ${TABLE}.has_saude_ocupacional_dash ;;
  }

  dimension: id_health_brokerages {
    type: number
    sql: ${TABLE}.id_health_brokerages ;;
  }

  dimension: iframe {
    type: string
    sql: ${TABLE}.iframe ;;
  }

  dimension: invoice_maturity {
    type: string
    sql: ${TABLE}.invoice_maturity ;;
  }

  dimension: language_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.language_id ;;
  }

  dimension_group: last_delivered {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.last_delivered_date ;;
  }

  dimension: last_lives_date_update {
    type: string
    sql: ${TABLE}.last_lives_date_update ;;
  }

  dimension: last_lives_number_update {
    type: number
    sql: ${TABLE}.last_lives_number_update ;;
  }

  dimension: life_track_billing {
    type: yesno
    sql: ${TABLE}.life_track_billing ;;
  }

  dimension: life_track_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.life_track_id ;;
  }

  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
  }

  dimension: margin {
    type: string
    sql: ${TABLE}.margin ;;
  }

  dimension: multiple_policies {
    type: string
    sql: ${TABLE}.multiple_policies ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: name_contact_in_health_brokerage {
    type: string
    sql: ${TABLE}.name_contact_in_health_brokerage ;;
  }

  dimension: name_contact_in_operator {
    type: string
    sql: ${TABLE}.name_contact_in_operator ;;
  }

  dimension: name_contact_in_technical_area {
    type: string
    sql: ${TABLE}.name_contact_in_technical_area ;;
  }

  dimension: neighborhood {
    type: string
    sql: ${TABLE}.neighborhood ;;
  }

  dimension: nickname {
    type: string
    sql: ${TABLE}.nickname ;;
  }

  dimension: number {
    type: string
    sql: ${TABLE}.number ;;
  }

  dimension: number_of_lives {
    type: string
    sql: ${TABLE}.number_of_lives ;;
  }

  dimension: observations {
    type: string
    sql: ${TABLE}.observations ;;
  }

  dimension: operator {
    type: string
    sql: ${TABLE}.operator ;;
  }

  dimension: operator_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.operator_id ;;
  }

  dimension: policy {
    type: string
    sql: ${TABLE}.policy ;;
  }

  dimension: ppt {
    type: string
    sql: ${TABLE}.ppt ;;
  }

  dimension: pretty_name {
    type: string
    sql: ${TABLE}.pretty_name ;;
  }

  dimension: refund {
    type: string
    sql: ${TABLE}.refund ;;
  }

  dimension: report_period {
    type: string
    sql: ${TABLE}.report_period ;;
  }

  dimension: requested_adjustment {
    type: string
    sql: ${TABLE}.requested_adjustment ;;
  }

  dimension: reset_applied {
    type: string
    sql: ${TABLE}.reset_applied ;;
  }

  dimension: search_key {
    type: string
    sql: ${TABLE}.search_key ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.site ;;
  }

  dimension: start_count {
    type: string
    sql: ${TABLE}.start_count ;;
  }

  dimension_group: start_invoicing {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.start_invoicing ;;
  }

  dimension: start_suridata_analysis {
    type: string
    sql: ${TABLE}.start_suridata_analysis ;;
  }

  dimension: startf_current_term {
    type: string
    sql: ${TABLE}.startf_current_term ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: status_lives {
    type: string
    sql: ${TABLE}.status_lives ;;
  }

  dimension: status_mapping {
    type: string
    sql: ${TABLE}.status_mapping ;;
  }

  dimension: suridata_product {
    type: string
    sql: ${TABLE}.suridata_product ;;
  }

  dimension: type_contract {
    type: string
    sql: ${TABLE}.type_contract ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.uf ;;
  }

  dimension: university_age {
    type: string
    sql: ${TABLE}.university_age ;;
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

  dimension: url_audit_file {
    type: string
    sql: ${TABLE}.url_audit_file ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.zipcode ;;
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
      nickname,
      pretty_name,
      operators.id,
      operators.name,
      operators.nickname,
      languages.id,
      languages.name,
      life_tracks.id,
      life_tracks.name,
      suripoint.count,
      suripoint_images.count
    ]
  }
}
