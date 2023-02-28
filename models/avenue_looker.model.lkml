connection: "bq_suribase"

# include all the views
include: "/views/**/*.view"

datagroup: avenue_looker_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: avenue_looker_default_datagroup

explore: utilizacao_looker {}