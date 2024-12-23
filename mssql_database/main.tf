resource "azurerm_mssql_server" "sql_server" {
  name                         = var.sql_server_name1
  resource_group_name          = var.resource_group_name
  location                     = var.location
  administrator_login          = var.admin_username1
  administrator_login_password = var.admin_password1
  version                      = "12.0"

  tags = {
    environment = var.environment
  }
}

resource "azurerm_mssql_database" "sql_database" {
  server_id           = azurerm_mssql_server.sql_server.id
  name                = var.sql_database_name1
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   server_name         = azurerm_mssql_server.sql_server.name
  collation           = var.collation
  max_size_gb         = var.max_size_gb
}
