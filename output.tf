output "sql_server_id" {
  description = "The ID of the MSSQL Server."
  value       = module.mssql_database.sql_server_id
}

output "sql_database_id" {
  description = "The ID of the MSSQL Database."
  value       = module.mssql_database.sql_database_id
}

output "sql_server_fqdn" {
  description = "The FQDN of the MSSQL Server."
  value       = module.mssql_database.sql_server_fqdn
}
