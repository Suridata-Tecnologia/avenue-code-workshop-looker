view: tuss_suridata {
  sql_table_name: suridata_portal.tuss_suridata ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: capitulo {
    type: string
    sql: ${TABLE}.capitulo ;;
  }

  dimension: cd_original {
    type: string
    sql: ${TABLE}.cd_original ;;
  }

  dimension: cd_original_bruto {
    type: string
    sql: ${TABLE}.cd_original_bruto ;;
  }

  dimension: cd_tuss {
    type: string
    sql: ${TABLE}.cd_tuss ;;
  }

  dimension: classifica_cd_original {
    type: string
    sql: ${TABLE}.classifica_cd_original ;;
  }

  dimension: classifica_quimioradio {
    type: string
    sql: ${TABLE}.classifica_quimioradio ;;
  }

  dimension: cod_validacao {
    type: string
    sql: ${TABLE}.cod_validacao ;;
  }

  dimension: codigos_iguais {
    type: string
    sql: ${TABLE}.codigos_iguais ;;
  }

  dimension: complemento {
    type: string
    sql: ${TABLE}.complemento ;;
  }

  dimension: data_inclusao {
    type: string
    sql: ${TABLE}.data_inclusao ;;
  }

  dimension: desc_original {
    type: string
    sql: ${TABLE}.desc_original ;;
  }

  dimension: desc_tuss {
    type: string
    sql: ${TABLE}.desc_tuss ;;
  }

  dimension: domiciliar__check_up {
    type: string
    sql: ${TABLE}.domiciliar__check_up ;;
  }

  dimension: exame_duplicidade {
    type: string
    sql: ${TABLE}.exame_duplicidade ;;
  }

  dimension: grupo {
    type: string
    sql: ${TABLE}.grupo ;;
  }

  dimension: grupo_procedimento {
    type: string
    sql: ${TABLE}.grupo_procedimento ;;
  }

  dimension: rol {
    type: string
    sql: ${TABLE}.rol ;;
  }

  dimension: sequencia_cd_original {
    type: string
    sql: ${TABLE}.sequencia_cd_original ;;
  }

  dimension: sigla_operadora {
    type: string
    sql: ${TABLE}.sigla_operadora ;;
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
    sql: ${TABLE}.teleatendimento ;;
  }

  dimension: terapia_alto_custo {
    type: string
    sql: ${TABLE}.terapia_alto_custo ;;
  }

  dimension: verifica_quimioradio {
    type: string
    sql: ${TABLE}.verifica_quimioradio ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
