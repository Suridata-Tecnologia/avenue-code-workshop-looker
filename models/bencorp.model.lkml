connection: "bencorp"

# include all the views
include: "/views/**/*.view"

datagroup: bencorp_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bencorp_default_datagroup

explore:  _utilizacao_bencorp_looker {}
