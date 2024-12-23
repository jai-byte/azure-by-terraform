
module "resource_group" {
  source                  = "./resourcegroup"
  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location
}

module "vnet" {
  source                   = "./vnet"
  virtual_network_name     = var.virtual_network_name
  virtual_network_location = var.virtual_network_location
  resource_group_name      = module.resource_group.resource_group_name
  address_space            = var.address_space
  subnet_name              = var.subnet_name
  subnet_prefixes          = var.subnet_prefixes
}

module "vm" {
  source              = "./vm"
  vm_name             = var.vm_name
  resource_group_name = module.resource_group.resource_group_name
  vm_location         = var.vm_location
  vm_size             = var.vm_size
  image_id            = var.image_id
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  subnet_id           = module.vnet.subnet_id
  environment         = var.environment
}
module "storage" {
  source               = "./storage"
  resource_group_name  = var.resource_group_name
  location             = var.resource_group_location
  storage_account_name = "myuniquestorageacct" # Replace with a unique name
  environment1         = var.environment1
}

# resource "azurerm_resource_group" "rg" {
#   name     = var.resource_group_name
#   location = var.location
# }
module "mssql_database" {
  source               = "./mssql_database"
  resource_group_name  = var.resource_group_name
  location             = var.location
  sql_server_name1      = var.sql_server_name
  sql_database_name1    = var.sql_database_name
  admin_username1       = var.admin_username1
  admin_password1       = var.admin_password1
  collation            = var.collation
  max_size_gb          = var.max_size_gb
  environment          = var.environment
}

module "aks_cluster" {
  source              = "./aks_cluster"
  cluster_name        = "my-aks-cluster"
  location            = "East US"
  resource_group_name = "my-resource-group"
  dns_prefix          = "mycluster"
  node_count          = 3
  node_vm_size        = "Standard_DS2_v2"
  tags                = {
    environment = "dev"
  }
}

