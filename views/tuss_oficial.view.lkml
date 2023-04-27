view: tuss_oficial {
  sql_table_name: suridata_portal.tuss_oficial ;;

  dimension: capitulo {
    type: string
    sql: ${TABLE}.capitulo ;;
  }

  dimension: cd_original {
    type: number
    sql: ${TABLE}.cd_original ;;
  }

  dimension: cd_tuss {
    type: number
    sql: ${TABLE}.cd_tuss ;;
  }

  dimension: desc_tuss {
    type: string
    sql: ${TABLE}.desc_tuss ;;
  }

  dimension: grupo {
    type: string
    sql: ${TABLE}.grupo ;;
  }

  dimension: rol {
    type: string
    sql: ${TABLE}.rol ;;
  }

  dimension: subgrupo {
    type: string
    sql: ${TABLE}.subgrupo ;;
  }

  dimension: tabela {
    type: string
    sql: ${TABLE}.tabela ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
