output "materialized_views_lookup_id" {
  description = "Map of id values across all materialized_views_lookup, keyed the same as var.materialized_views_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_materialized_views.materialized_views_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "materialized_views_lookup_database" {
  description = "Map of database values across all materialized_views_lookup, keyed the same as var.materialized_views_lookup except keys with no database are omitted"
  value       = { for k, v in data.snowflake_materialized_views.materialized_views_lookup : k => v.database if v.database != null && length(v.database) > 0 }
}
output "materialized_views_lookup_materialized_views" {
  description = "Map of materialized_views values across all materialized_views_lookup, keyed the same as var.materialized_views_lookup except keys with no materialized_views are omitted"
  value       = { for k, v in data.snowflake_materialized_views.materialized_views_lookup : k => v.materialized_views if v.materialized_views != null && length(v.materialized_views) > 0 }
}
output "materialized_views_lookup_schema" {
  description = "Map of schema values across all materialized_views_lookup, keyed the same as var.materialized_views_lookup except keys with no schema are omitted"
  value       = { for k, v in data.snowflake_materialized_views.materialized_views_lookup : k => v.schema if v.schema != null && length(v.schema) > 0 }
}

