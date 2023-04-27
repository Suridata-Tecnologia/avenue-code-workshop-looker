connection: "bencorp"

# include all the views
include: "/views/**/*.view"

datagroup: acesso_bencorp_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: acesso_bencorp_default_datagroup

explore: utilizacao_bencorp_looker {}
