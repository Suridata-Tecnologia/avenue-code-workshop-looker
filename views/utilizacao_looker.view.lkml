view: utilizacao_looker {
  sql_table_name: `suridata_suribase_dev.Utilizacao_Looker`
    ;;

  dimension: agrupamento_internacao {
    type: string
    sql: ${TABLE}.Agrupamento_Internacao ;;
  }

  dimension: agrupamento_internacao_in {
    type: string
    sql: ${TABLE}.Agrupamento_Internacao_IN ;;
  }

  dimension: cargo {
    type: string
    sql: ${TABLE}.Cargo ;;
  }

  dimension_group: carregado_em {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Carregado_em ;;
  }

  dimension: cd_original {
    type: string
    sql: ${TABLE}.cd_original ;;
  }

  dimension: cid {
    type: string
    sql: ${TABLE}.CID ;;
  }

  dimension: cod_cid {
    type: string
    sql: ${TABLE}.CodCID ;;
  }

  dimension: cod_familia {
    type: string
    sql: ${TABLE}.CodFamilia ;;
  }

  dimension: cod_grupo_evento {
    type: string
    sql: ${TABLE}.Cod_Grupo_EVento ;;
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

  dimension: complemento_terapia {
    type: string
    sql: ${TABLE}.Complemento_Terapia ;;
  }

  dimension: complemento_terapia_in {
    type: string
    sql: ${TABLE}.Complemento_Terapia_IN ;;
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

  dimension: desc_risco_in {
    type: string
    sql: ${TABLE}.Desc_Risco_IN ;;
  }

  dimension: descricao_operadora {
    type: string
    sql: ${TABLE}.Descricao_Operadora ;;
  }

  dimension: empresa {
    type: string
    sql: ${TABLE}.Empresa ;;
  }

  dimension: especialidade {
    type: string
    sql: ${TABLE}.Especialidade ;;
  }

  dimension: faixa_etaria_usuario {
    type: string
    sql: ${TABLE}.Faixa_Etaria_Usuario ;;
  }

  dimension: genero_usuario {
    type: string
    sql: ${TABLE}.Genero_Usuario ;;
  }

  dimension: grupo_procedimento {
    type: string
    sql: ${TABLE}.Grupo_Procedimento ;;
  }

  dimension: idade_usuario {
    type: number
    sql: ${TABLE}.Idade_Usuario ;;
  }

  dimension: item_cadastro {
    type: string
    sql: ${TABLE}.ItemCadastro ;;
  }

  dimension: num_conta_cod_usuario {
    type: string
    sql: ${TABLE}.NumConta_CodUsuario ;;
  }

  dimension: operadora {
    type: string
    sql: ${TABLE}.Operadora ;;
  }

  dimension: parentesco_usuario {
    type: string
    sql: ${TABLE}.Parentesco_Usuario ;;
  }

  dimension: periodo {
    type: string
    sql: ${TABLE}.Periodo ;;
  }

  dimension: periodo_gestacao {
    type: string
    sql: ${TABLE}.Periodo_Gestacao ;;
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

  dimension: prestador_grupo {
    type: string
    sql: ${TABLE}.Prestador_Grupo ;;
  }

  dimension: qtd_evento {
    type: number
    sql: ${TABLE}.QTD_Evento ;;
  }

  dimension: qtd_risco {
    type: number
    sql: ${TABLE}.QTD_Risco ;;
  }

  dimension: qtd_servico {
    type: number
    sql: ${TABLE}.QTD_Servico ;;
  }

  dimension: rank_usuario_12meses {
    type: number
    sql: ${TABLE}.Rank_usuario_12meses ;;
  }

  dimension: rede_reembolso {
    type: string
    sql: ${TABLE}.Rede_Reembolso ;;
  }

  dimension: senha {
    type: string
    sql: ${TABLE}.Senha ;;
  }

  dimension: sinistro {
    type: number
    sql: ${TABLE}.Sinistro ;;
  }

  dimension: status_usuario {
    type: string
    sql: ${TABLE}.Status_Usuario ;;
  }

  dimension: sub_estipulante {
    type: string
    sql: ${TABLE}.Sub_estipulante ;;
  }

  dimension: sub_grupo_internacao {
    type: string
    sql: ${TABLE}.SubGrupo_internacao ;;
  }

  dimension: tipo_evento {
    type: string
    sql: ${TABLE}.Tipo_Evento ;;
  }

  dimension: tipo_evento_in {
    type: string
    sql: ${TABLE}.Tipo_Evento_IN ;;
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

  dimension: titularidade_usuario {
    type: string
    sql: ${TABLE}.Titularidade_Usuario ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.Usuario ;;
  }

  dimension: uti_neo {
    type: string
    sql: ${TABLE}.UTI_Neo ;;
  }

  dimension: valida_gestacao {
    type: string
    sql: ${TABLE}.Valida_Gestacao ;;
  }

  dimension: vigencia {
    type: string
    sql: ${TABLE}.Vigencia ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
