view: tmp_tuss {
  sql_table_name: suridata_portal.tmp_tuss ;;

  dimension: capitulo {
    type: string
    sql: ${TABLE}.capitulo ;;
  }

  dimension: cd_original {
    type: number
    sql: ${TABLE}.cd_original ;;
  }

  dimension: cd_tuss {
    type: string
    sql: ${TABLE}.cd_tuss ;;
  }

  dimension: classifica_quimioradio {
    type: string
    sql: ${TABLE}.`Classifica Quimio/Radio` ;;
  }

  dimension: cod_banco_de_dados {
    type: string
    sql: ${TABLE}.cod_banco_de_dados ;;
  }

  dimension: complemento {
    type: string
    sql: ${TABLE}.complemento ;;
  }

  dimension: desc_banco_de_dados {
    type: string
    sql: ${TABLE}.desc_banco_de_dados ;;
  }

  dimension: desc_original {
    type: string
    sql: ${TABLE}.desc_original ;;
  }

  dimension: desc_tuss {
    type: string
    sql: ${TABLE}.desc_tuss ;;
  }

  dimension: domiciliar_check_up {
    type: string
    sql: ${TABLE}.Domiciliar_Check_up ;;
  }

  dimension: exame_duplicidade {
    type: string
    sql: ${TABLE}.Exame_Duplicidade ;;
  }

  dimension: grupo {
    type: string
    sql: ${TABLE}.grupo ;;
  }

  dimension: grupo_procedimento {
    type: string
    sql: ${TABLE}.grupo_procedimento ;;
  }

  dimension: index_row {
    type: number
    sql: ${TABLE}.index_row ;;
  }

  dimension: operator {
    type: string
    sql: ${TABLE}.operator ;;
  }

  dimension: order {
    type: number
    sql: ${TABLE}.`order` ;;
  }

  dimension: palavra_taxa_quimio {
    type: string
    sql: ${TABLE}.palavra_taxa_quimio ;;
  }

  dimension: qtd_servicos {
    type: number
    sql: ${TABLE}.QTD_Servicos ;;
  }

  dimension: qual_tuss {
    type: string
    sql: ${TABLE}.qual_tuss ;;
  }

  dimension: rol {
    type: string
    sql: ${TABLE}.rol ;;
  }

  dimension: similaridade {
    type: number
    sql: ${TABLE}.similaridade ;;
  }

  dimension: subgrupo {
    type: string
    sql: ${TABLE}.subgrupo ;;
  }

  dimension: tabela {
    type: string
    sql: ${TABLE}.tabela ;;
  }

  dimension: teleatendimento {
    type: string
    sql: ${TABLE}.Teleatendimento ;;
  }

  dimension: terapia_alto_custo {
    type: string
    sql: ${TABLE}.Terapia_Alto_Custo ;;
  }

  dimension: total_sinistro {
    type: number
    sql: ${TABLE}.Total_Sinistro ;;
  }

  dimension: valor_unitario {
    type: number
    sql: ${TABLE}.Valor_Unitario ;;
  }

  dimension: verifica_quimioradio {
    type: string
    sql: ${TABLE}.`Verifica Quimio/Radio` ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
