connection: "base_producao"

# include all the views
include: "/views/**/*.view"

datagroup: imagem_looker_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: imagem_looker_default_datagroup

explore: imagem_looker {}
