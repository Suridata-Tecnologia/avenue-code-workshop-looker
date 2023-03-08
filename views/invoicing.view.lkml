view: invoicing {
  sql_table_name: suridata_portal.invoicing ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}.company_id ;;
  }

  dimension: competence {
    type: string
    sql: ${TABLE}.competence ;;
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

  dimension: discount_company {
    type: number
    sql: ${TABLE}.discount_company ;;
  }

  dimension: discount_health_brokerage {
    type: number
    sql: ${TABLE}.discount_health_brokerage ;;
  }

  dimension: health_id {
    type: number
    sql: ${TABLE}.health_id ;;
  }

  dimension: life_track_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.life_track_id ;;
  }

  dimension: product_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.product_id ;;
  }

  dimension: recurrency {
    type: yesno
    sql: ${TABLE}.recurrency ;;
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

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [id, products.id, products.name, life_tracks.id, life_tracks.name]
  }
}
