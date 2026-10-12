data "snowflake_materialized_views" "materialized_views_lookup" {
  for_each = var.materialized_views_lookup

  database = each.value.database
  schema   = each.value.schema
}

