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
  }
