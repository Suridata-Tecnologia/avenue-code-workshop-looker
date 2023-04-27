connection: "base_producao"

# include all the views
include: "/views/**/*.view"

datagroup: base_producao_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: base_producao_default_datagroup

explore: activity_record {
  join: users {
    type: left_outer
    sql_on: ${activity_record.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: operators {
    type: left_outer
    sql_on: ${activity_record.operator_id} = ${operators.id} ;;
    relationship: many_to_one
  }

  join: languages {
    type: left_outer
    sql_on: ${users.language_id} = ${languages.id} ;;
    relationship: many_to_one
  }
}

explore: allowed_domains {}

explore: api_refresh_token {
  join: users {
    type: left_outer
    sql_on: ${api_refresh_token.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: languages {
    type: left_outer
    sql_on: ${users.language_id} = ${languages.id} ;;
    relationship: many_to_one
  }
}

explore: ben_confirm_account_sessions {
  join: users {
    type: left_outer
    sql_on: ${ben_confirm_account_sessions.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: languages {
    type: left_outer
    sql_on: ${users.language_id} = ${languages.id} ;;
    relationship: many_to_one
  }
}

explore: ben_contestations {
  join: users {
    type: left_outer
    sql_on: ${ben_contestations.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: languages {
    type: left_outer
    sql_on: ${users.language_id} = ${languages.id} ;;
    relationship: many_to_one
  }
}

explore: ben_history_contestations {}

explore: ben_mail_response_logs {
  join: users {
    type: left_outer
    sql_on: ${ben_mail_response_logs.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: languages {
    type: left_outer
    sql_on: ${users.language_id} = ${languages.id} ;;
    relationship: many_to_one
  }
}

explore: ben_refresh_tokens {
  join: users {
    type: left_outer
    sql_on: ${ben_refresh_tokens.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: languages {
    type: left_outer
    sql_on: ${users.language_id} = ${languages.id} ;;
    relationship: many_to_one
  }
}

explore: ben_users {}

explore: bots {
  join: operators {
    type: left_outer
    sql_on: ${bots.operator_id} = ${operators.id} ;;
    relationship: many_to_one
  }
}

explore: companies {
  join: operators {
    type: left_outer
    sql_on: ${companies.operator_id} = ${operators.id} ;;
    relationship: many_to_one
  }

  join: languages {
    type: left_outer
    sql_on: ${companies.language_id} = ${languages.id} ;;
    relationship: many_to_one
  }

  join: life_tracks {
    type: left_outer
    sql_on: ${companies.life_track_id} = ${life_tracks.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${life_tracks.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: download_records {
  join: users {
    type: left_outer
    sql_on: ${download_records.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: languages {
    type: left_outer
    sql_on: ${users.language_id} = ${languages.id} ;;
    relationship: many_to_one
  }
}

explore: drive_paths {}

explore: error {}

explore: error_occurrence {
  join: users {
    type: left_outer
    sql_on: ${error_occurrence.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: languages {
    type: left_outer
    sql_on: ${users.language_id} = ${languages.id} ;;
    relationship: many_to_one
  }
}

explore: featured {}

explore: featured_dowloads {
  join: featured {
    type: left_outer
    sql_on: ${featured_dowloads.featured_id} = ${featured.id} ;;
    relationship: many_to_one
  }
}

explore: ge_charts {}

explore: ge_chart_colours {}

explore: ge_conditions {}

explore: ge_filters {}

explore: ge_variables {}

explore: health_brokerages {
  join: languages {
    type: left_outer
    sql_on: ${health_brokerages.language_id} = ${languages.id} ;;
    relationship: many_to_one
  }
}

explore: invoicing {
  join: products {
    type: left_outer
    sql_on: ${invoicing.product_id} = ${products.id} ;;
    relationship: many_to_one
  }

  join: life_tracks {
    type: left_outer
    sql_on: ${invoicing.life_track_id} = ${life_tracks.id} ;;
    relationship: many_to_one
  }
}

explore: languages {}

explore: life_tracks {
  join: products {
    type: left_outer
    sql_on: ${life_tracks.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: logged_ins {
  join: users {
    type: left_outer
    sql_on: ${logged_ins.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: languages {
    type: left_outer
    sql_on: ${users.language_id} = ${languages.id} ;;
    relationship: many_to_one
  }
}

explore: logs {}

explore: migrations {}

explore: notifications {}

explore: operators {}

explore: process {}

explore: products {}

explore: profile_group {
  join: users {
    type: left_outer
    sql_on: ${profile_group.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: languages {
    type: left_outer
    sql_on: ${users.language_id} = ${languages.id} ;;
    relationship: many_to_one
  }
}

explore: rate {
  join: featured {
    type: left_outer
    sql_on: ${rate.featured_id} = ${featured.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${rate.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: languages {
    type: left_outer
    sql_on: ${users.language_id} = ${languages.id} ;;
    relationship: many_to_one
  }
}

explore: readjustment_history_operator {}

explore: readjustment_history_suridata {}

explore: registers {
  join: users {
    type: left_outer
    sql_on: ${registers.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: operators {
    type: left_outer
    sql_on: ${registers.operator_id} = ${operators.id} ;;
    relationship: many_to_one
  }

  join: languages {
    type: left_outer
    sql_on: ${users.language_id} = ${languages.id} ;;
    relationship: many_to_one
  }
}

explore: relationships {
  join: users {
    type: left_outer
    sql_on: ${relationships.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: languages {
    type: left_outer
    sql_on: ${users.language_id} = ${languages.id} ;;
    relationship: many_to_one
  }
}

explore: reports {
  join: languages {
    type: left_outer
    sql_on: ${reports.language_id} = ${languages.id} ;;
    relationship: many_to_one
  }
}

explore: report_permissions {
  join: users {
    type: left_outer
    sql_on: ${report_permissions.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: reports {
    type: left_outer
    sql_on: ${report_permissions.report_id} = ${reports.id} ;;
    relationship: many_to_one
  }

  join: languages {
    type: left_outer
    sql_on: ${users.language_id} = ${languages.id} ;;
    relationship: many_to_one
  }
}

explore: report_providers {}

explore: rule_commentary {}

explore: schedule {}

explore: schedules {
  join: users {
    type: left_outer
    sql_on: ${schedules.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: languages {
    type: left_outer
    sql_on: ${users.language_id} = ${languages.id} ;;
    relationship: many_to_one
  }
}

explore: schedule_company {
  join: schedule {
    type: left_outer
    sql_on: ${schedule_company.schedule_id} = ${schedule.id} ;;
    relationship: many_to_one
  }
}

explore: sequelize_meta {}

explore: sequelizemeta {}

explore: suripoint {
  join: companies {
    type: left_outer
    sql_on: ${suripoint.companies_id} = ${companies.id} ;;
    relationship: many_to_one
  }

  join: operators {
    type: left_outer
    sql_on: ${companies.operator_id} = ${operators.id} ;;
    relationship: many_to_one
  }

  join: languages {
    type: left_outer
    sql_on: ${companies.language_id} = ${languages.id} ;;
    relationship: many_to_one
  }

  join: life_tracks {
    type: left_outer
    sql_on: ${companies.life_track_id} = ${life_tracks.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${life_tracks.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: suripoint_images {
  join: companies {
    type: left_outer
    sql_on: ${suripoint_images.companies_id} = ${companies.id} ;;
    relationship: many_to_one
  }

  join: operators {
    type: left_outer
    sql_on: ${companies.operator_id} = ${operators.id} ;;
    relationship: many_to_one
  }

  join: languages {
    type: left_outer
    sql_on: ${companies.language_id} = ${languages.id} ;;
    relationship: many_to_one
  }

  join: life_tracks {
    type: left_outer
    sql_on: ${companies.life_track_id} = ${life_tracks.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${life_tracks.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}

explore: time {
  join: users {
    type: left_outer
    sql_on: ${time.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: languages {
    type: left_outer
    sql_on: ${users.language_id} = ${languages.id} ;;
    relationship: many_to_one
  }
}

explore: tmp_tuss {}

explore: tuss_oficial {}

explore: tuss_suridata {}

explore: users {
  join: languages {
    type: left_outer
    sql_on: ${users.language_id} = ${languages.id} ;;
    relationship: many_to_one
  }
}

explore: imagem_looker {}
