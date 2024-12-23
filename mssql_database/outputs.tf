output "sql_server_id" {
  description = "The ID of the MSSQL Server."
  value       = azurerm_mssql_server.sql_server.id
}

output "sql_database_id" {
  description = "The ID of the MSSQL Database."
  value       = azurerm_mssql_database.sql_database.id
}

output "sql_server_fqdn" {
  description = "The Fully Qualified Domain Name (FQDN) of the MSSQL Server."
  value       = azurerm_mssql_server.sql_server.fully_qualified_domain_name
}

