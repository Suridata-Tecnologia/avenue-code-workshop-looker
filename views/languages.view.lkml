view: languages {
  sql_table_name: suridata_portal.languages ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: abbreviation {
    type: string
    sql: ${TABLE}.abbreviation ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
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
      companies.count,
      health_brokerages.count,
      reports.count,
      users.count
    ]
  }
}
