view: suripoint {
  sql_table_name: suridata_portal.suripoint ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: companies_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.companies_id ;;
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

  dimension: has_covid_slide {
    type: yesno
    sql: ${TABLE}.has_covid_slide ;;
  }

  dimension: has_footer_logo {
    type: yesno
    sql: ${TABLE}.has_footer_logo ;;
  }

  dimension: has_last_slide {
    type: yesno
    sql: ${TABLE}.has_last_slide ;;
  }

  dimension: slides_to_remove_anexo {
    type: string
    sql: ${TABLE}.slides_to_remove_anexo ;;
  }

  dimension: slides_to_remove_principal {
    type: string
    sql: ${TABLE}.slides_to_remove_principal ;;
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
    drill_fields: [id, companies.id, companies.name, companies.nickname, companies.pretty_name]
  }
}
