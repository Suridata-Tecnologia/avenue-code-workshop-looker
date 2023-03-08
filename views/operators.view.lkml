view: operators {
  sql_table_name: suridata_portal.operators ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: aa_origin {
    type: string
    sql: ${TABLE}.aa_origin ;;
  }

  dimension: abbreviation {
    type: string
    sql: ${TABLE}.abbreviation ;;
  }

  dimension: access_psswd {
    type: number
    sql: ${TABLE}.access_psswd ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: bot_key {
    type: string
    sql: ${TABLE}.bot_key ;;
  }

  dimension: cid {
    type: number
    value_format_name: id
    sql: ${TABLE}.cid ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
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

  dimension: competence_delay {
    type: number
    sql: ${TABLE}.competence_delay ;;
  }

  dimension: complement {
    type: string
    sql: ${TABLE}.complement ;;
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

  dimension: date_suridata {
    type: string
    sql: ${TABLE}.date_suridata ;;
  }

  dimension: logo {
    type: string
    sql: ${TABLE}.logo ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: names_in_ut {
    type: number
    sql: ${TABLE}.names_in_ut ;;
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

  dimension: operator_cell_phone {
    type: string
    sql: ${TABLE}.operator_cell_phone ;;
  }

  dimension: operator_commercial_phone {
    type: string
    sql: ${TABLE}.operator_commercial_phone ;;
  }

  dimension: operator_date {
    type: string
    sql: ${TABLE}.operator_date ;;
  }

  dimension: operator_email_contact {
    type: string
    sql: ${TABLE}.operator_email_contact ;;
  }

  dimension: operator_name_contact {
    type: string
    sql: ${TABLE}.operator_name_contact ;;
  }

  dimension: operator_type {
    type: string
    sql: ${TABLE}.operator_type ;;
  }

  dimension: premio_origin {
    type: string
    sql: ${TABLE}.premio_origin ;;
  }

  dimension: preventives {
    type: number
    sql: ${TABLE}.preventives ;;
  }

  dimension: psswd_origin {
    type: string
    sql: ${TABLE}.psswd_origin ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}.site ;;
  }

  dimension: sn_origin {
    type: string
    sql: ${TABLE}.sn_origin ;;
  }

  dimension: sntd_origin {
    type: string
    sql: ${TABLE}.sntd_origin ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: telemedicine {
    type: number
    sql: ${TABLE}.telemedicine ;;
  }

  dimension: type_of_access {
    type: string
    sql: ${TABLE}.type_of_access ;;
  }

  dimension: uf {
    type: string
    sql: ${TABLE}.uf ;;
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
      activity_record.count,
      bots.count,
      companies.count,
      registers.count
    ]
  }
}
