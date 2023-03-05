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


  }
