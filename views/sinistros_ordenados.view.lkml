view: sinistros_ordenados {
    derived_table: {
      explore_source: utilizacao_looker {
        column: desc_risco {}
        column: usuario {}
        column: sinistro {}
        column: carregado_em_date {}
        derived_column: sinistro_order{
          sql: row_number() over (order by sinistro desc) ;;
        }



      }
    }
    dimension: desc_risco {
      description: ""
    }
    dimension: usuario {
      description: ""
    }
    dimension: sinistro {
      description: ""
      type: number
    }
    dimension: carregado_em_date {
      description: ""
      type: date
    }
    dimension: sinistro_order {
      type: number
      primary_key: yes
    }
  measure: sinistro_top_10 {
    type: sum
    sql: ${TABLE}.sinistro;;
    filters: [sinistro_order :"1,2,3,4,5,6,7,8,9,10"]
  }
  measure: sinistro_top_20 {
    type: sum
    sql: ${TABLE}.sinistro;;
    filters: [sinistro_order :"1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20"]
  }
  measure: sinistro_top_30 {
    type: sum
    sql: ${TABLE}.sinistro;;
    filters: [sinistro_order :"1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30"]
  }



  }
