view: api_refresh_token {
  sql_table_name: suridata_portal.api_refresh_token ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: expires_in {
    type: string
    sql: ${TABLE}.expires_in ;;
  }

  dimension: user_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, users.id, users.name]
  }
}
