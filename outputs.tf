output "cosmosdb_sql_stored_procedures_id" {
  description = "Map of id values across all cosmosdb_sql_stored_procedures, keyed the same as var.cosmosdb_sql_stored_procedures"
  value       = { for k, v in azurerm_cosmosdb_sql_stored_procedure.cosmosdb_sql_stored_procedures : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cosmosdb_sql_stored_procedures_account_name" {
  description = "Map of account_name values across all cosmosdb_sql_stored_procedures, keyed the same as var.cosmosdb_sql_stored_procedures"
  value       = { for k, v in azurerm_cosmosdb_sql_stored_procedure.cosmosdb_sql_stored_procedures : k => v.account_name if v.account_name != null && length(v.account_name) > 0 }
}
output "cosmosdb_sql_stored_procedures_body" {
  description = "Map of body values across all cosmosdb_sql_stored_procedures, keyed the same as var.cosmosdb_sql_stored_procedures"
  value       = { for k, v in azurerm_cosmosdb_sql_stored_procedure.cosmosdb_sql_stored_procedures : k => v.body if v.body != null && length(v.body) > 0 }
}
output "cosmosdb_sql_stored_procedures_container_name" {
  description = "Map of container_name values across all cosmosdb_sql_stored_procedures, keyed the same as var.cosmosdb_sql_stored_procedures"
  value       = { for k, v in azurerm_cosmosdb_sql_stored_procedure.cosmosdb_sql_stored_procedures : k => v.container_name if v.container_name != null && length(v.container_name) > 0 }
}
output "cosmosdb_sql_stored_procedures_database_name" {
  description = "Map of database_name values across all cosmosdb_sql_stored_procedures, keyed the same as var.cosmosdb_sql_stored_procedures"
  value       = { for k, v in azurerm_cosmosdb_sql_stored_procedure.cosmosdb_sql_stored_procedures : k => v.database_name if v.database_name != null && length(v.database_name) > 0 }
}
output "cosmosdb_sql_stored_procedures_name" {
  description = "Map of name values across all cosmosdb_sql_stored_procedures, keyed the same as var.cosmosdb_sql_stored_procedures"
  value       = { for k, v in azurerm_cosmosdb_sql_stored_procedure.cosmosdb_sql_stored_procedures : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cosmosdb_sql_stored_procedures_resource_group_name" {
  description = "Map of resource_group_name values across all cosmosdb_sql_stored_procedures, keyed the same as var.cosmosdb_sql_stored_procedures"
  value       = { for k, v in azurerm_cosmosdb_sql_stored_procedure.cosmosdb_sql_stored_procedures : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}

