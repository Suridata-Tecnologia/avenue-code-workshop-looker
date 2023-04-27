view: utilizacao_bencorp_looker {
  sql_table_name: `STG_suridata.Utilizacao_Bencorp_Looker`
    ;;

  dimension: agrupamento_internacao {
    type: string
    sql: ${TABLE}.Agrupamento_Internacao ;;
  }

  dimension: cd_original {
    type: string
    sql: ${TABLE}.cd_original ;;
  }

  dimension: cid {
    type: string
    sql: ${TABLE}.CID ;;
  }

  dimension: cnpj_prestador {
    type: string
    sql: ${TABLE}.CNPJ_Prestador ;;
  }

  dimension: cod_cid {
    type: string
    sql: ${TABLE}.CodCID ;;
  }

  dimension: cod_grupo_evento {
    type: string
    sql: ${TABLE}.Cod_Grupo_Evento ;;
  }

  dimension: cod_tipo_evento {
    type: number
    sql: ${TABLE}.Cod_Tipo_Evento ;;
  }

  dimension: cod_tuss {
    type: string
    sql: ${TABLE}.Cod_TUSS ;;
  }

  dimension: cod_usuario_servico {
    type: string
    sql: ${TABLE}.CodUsuarioServico ;;
  }

  dimension: codigo_plano {
    type: string
    sql: ${TABLE}.CodigoPlano ;;
  }

  dimension: codigo_risco {
    type: number
    sql: ${TABLE}.Codigo_Risco ;;
  }

  dimension: complemento_contas_pagas {
    type: string
    sql: ${TABLE}.Complemento_ContasPagas ;;
  }

  dimension: data_atendto {
    type: string
    sql: ${TABLE}.Data_Atendto ;;
  }

  dimension: data_sinistro {
    type: string
    sql: ${TABLE}.Data_Sinistro ;;
  }

  dimension: desc_risco {
    type: string
    sql: ${TABLE}.Desc_Risco ;;
  }

  dimension: descricao_operadora {
    type: string
    sql: ${TABLE}.Descricao_Operadora ;;
  }

  dimension: empresa {
    type: string
    sql: ${TABLE}.Empresa ;;
  }

  dimension: genero_usuario {
    type: string
    sql: ${TABLE}.Genero_Usuario ;;
  }

  dimension: grupo_procedimento {
    type: string
    sql: ${TABLE}.Grupo_Procedimento ;;
  }

  dimension: operadora {
    type: string
    sql: ${TABLE}.Operadora ;;
  }

  dimension: plano_usuario {
    type: string
    sql: ${TABLE}.Plano_Usuario ;;
  }

  dimension: porta_entrada {
    type: string
    sql: ${TABLE}.Porta_Entrada ;;
  }

  dimension: prestador {
    type: string
    sql: ${TABLE}.Prestador ;;
  }

  dimension: qtd_evento {
    type: number
    sql: ${TABLE}.QTD_Evento ;;
  }

  dimension: qtd_servico {
    type: number
    sql: ${TABLE}.QTD_Servico ;;
  }

  dimension: sinistro {
    type: number
    sql: ${TABLE}.Sinistro ;;
  }

  dimension: status_usuario {
    type: string
    sql: ${TABLE}.Status_Usuario ;;
  }

  dimension: sub_grupo_internacao {
    type: string
    sql: ${TABLE}.SubGrupo_Internacao ;;
  }

  dimension: tipo_evento {
    type: string
    sql: ${TABLE}.Tipo_Evento ;;
  }

  dimension: tipo_internacao {
    type: string
    sql: ${TABLE}.Tipo_Internacao ;;
  }

  dimension: tipo_risco {
    type: string
    sql: ${TABLE}.Tipo_Risco ;;
  }

  dimension: tipo_terapia {
    type: string
    sql: ${TABLE}.Tipo_Terapia ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
