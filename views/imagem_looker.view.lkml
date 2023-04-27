view: imagem_looker {
  sql_table_name: suridata_portal.Imagem_Looker ;;

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }

  dimension: parametro_dash_companies {
    type: string
    sql: ${TABLE}.Parametro_Dash_Companies ;;
  }

  dimension: public_url {
    type: string
    sql: ${TABLE}.public_url ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [filename]
  }
}
