view: products {
  sql_table_name: suridata_portal.products ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: audit_month_interval {
    type: number
    sql: ${TABLE}.audit_month_interval ;;
  }

  dimension: billing_product {
    type: string
    sql: ${TABLE}.billing_product ;;
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

  dimension: is_offtheshelf_product {
    type: yesno
    sql: ${TABLE}.is_offtheshelf_product ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: one_page_month_interval {
    type: number
    sql: ${TABLE}.one_page_month_interval ;;
  }

  dimension: ppt_month_interval {
    type: number
    sql: ${TABLE}.ppt_month_interval ;;
  }

  dimension: recurrency {
    type: yesno
    sql: ${TABLE}.recurrency ;;
  }

  dimension: resume {
    type: string
    sql: ${TABLE}.resume ;;
  }

  dimension: top_10_month_interval {
    type: number
    sql: ${TABLE}.top_10_month_interval ;;
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
    type: string
    sql: ${TABLE}.value ;;
  }

  dimension: value_per_life {
    type: string
    sql: ${TABLE}.value_per_life ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, invoicing.count, life_tracks.count]
  }
}
