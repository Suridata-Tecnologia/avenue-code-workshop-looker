view: rate {
  sql_table_name: suridata_portal.rate ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: featured_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.featured_id ;;
  }

  dimension: like {
    type: number
    sql: ${TABLE}.`like` ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, featured.id, users.id, users.name]
  }
}
