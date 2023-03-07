view: sinistros_ordenados {
    derived_table: {
      explore_source: utilizacao_looker {
        column: usuario {}
        column: total_sinistro {}
        derived_column: sinistro_order{
          sql: row_number() over (order by total_sinistro desc) ;;
        }



      }
    }

    dimension: usuario {
      description: ""
      primary_key: yes
    }

    dimension: total_sinistro{
      description: ""
      type: number
    }

    dimension: sinistro_order {
      type: number
    }
  dimension: top10 {
    case: {
      when: {
        sql: ${TABLE}.sinistro_order < 11 ;;
        label: "top_10"
      }
      else: "outros"
    }
  }
  dimension: top20 {
    case: {
      when: {
        sql: ${TABLE}.sinistro_order < 21 ;;
        label: "top_20"
      }
      else: "outros"
    }
  }
  dimension: top30 {
    case: {
      when: {
        sql: ${TABLE}.sinistro_order < 31 ;;
        label: "top_30"}

      else: "outros"
    }
  }

  measure: sum_top_20 {
      type: sum
      sql: ${TABLE}.total_sinistro ;;
      filters: [top20 : "top_20"]
    }

  measure: soma_total_sinistro  {
    type: sum
    sql: ${TABLE}.total_sinistro;;
  }

  measure: percent_sinistro {
    type: number
    sql: ${sum_top_20}/${soma_total_sinistro};;
    value_format: "0.00%"
  }

  }
