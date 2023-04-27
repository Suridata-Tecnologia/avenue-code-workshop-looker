view: featured_dowloads {
  sql_table_name: suridata_portal.featured_dowloads ;;
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

  dimension: link {
    type: string
    sql: ${TABLE}.link ;;
  }

  measure: count {
    type: count
    drill_fields: [id, featured.id]
  }
}
