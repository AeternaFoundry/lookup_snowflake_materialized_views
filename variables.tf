variable "materialized_views_lookup" {
  description = <<EOT
Map of materialized_views_lookup, attributes below
Required:
    - database
    - schema
EOT

  type = map(object({
    database = string
    schema   = string
  }))
}

