variable "cosmosdb_sql_stored_procedures" {
  description = <<EOT
Map of cosmosdb_sql_stored_procedures, attributes below
Required:
    - account_name
    - body
    - container_name
    - database_name
    - name
    - resource_group_name
EOT

  type = map(object({
    account_name        = string
    body                = string
    container_name      = string
    database_name       = string
    name                = string
    resource_group_name = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_sql_stored_procedures : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_sql_stored_procedures : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_sql_stored_procedures : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_sql_stored_procedures : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.cosmosdb_sql_stored_procedures : (
        length(v.body) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

