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



  }
