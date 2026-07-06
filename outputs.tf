output "cosmosdb_sql_stored_procedures" {
  description = "All cosmosdb_sql_stored_procedure resources"
  value       = azurerm_cosmosdb_sql_stored_procedure.cosmosdb_sql_stored_procedures
}
output "cosmosdb_sql_stored_procedures_account_name" {
  description = "List of account_name values across all cosmosdb_sql_stored_procedures"
  value       = [for k, v in azurerm_cosmosdb_sql_stored_procedure.cosmosdb_sql_stored_procedures : v.account_name]
}
output "cosmosdb_sql_stored_procedures_body" {
  description = "List of body values across all cosmosdb_sql_stored_procedures"
  value       = [for k, v in azurerm_cosmosdb_sql_stored_procedure.cosmosdb_sql_stored_procedures : v.body]
}
output "cosmosdb_sql_stored_procedures_container_name" {
  description = "List of container_name values across all cosmosdb_sql_stored_procedures"
  value       = [for k, v in azurerm_cosmosdb_sql_stored_procedure.cosmosdb_sql_stored_procedures : v.container_name]
}
output "cosmosdb_sql_stored_procedures_database_name" {
  description = "List of database_name values across all cosmosdb_sql_stored_procedures"
  value       = [for k, v in azurerm_cosmosdb_sql_stored_procedure.cosmosdb_sql_stored_procedures : v.database_name]
}
output "cosmosdb_sql_stored_procedures_name" {
  description = "List of name values across all cosmosdb_sql_stored_procedures"
  value       = [for k, v in azurerm_cosmosdb_sql_stored_procedure.cosmosdb_sql_stored_procedures : v.name]
}
output "cosmosdb_sql_stored_procedures_resource_group_name" {
  description = "List of resource_group_name values across all cosmosdb_sql_stored_procedures"
  value       = [for k, v in azurerm_cosmosdb_sql_stored_procedure.cosmosdb_sql_stored_procedures : v.resource_group_name]
}

