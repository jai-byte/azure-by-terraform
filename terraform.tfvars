resource_group_name     = "my-resource-group"
resource_group_location = "East US"

virtual_network_name     = "my-vnet"
virtual_network_location = "East US"
address_space            = ["10.0.0.0/16"]
subnet_name              = "my-subnet"
subnet_prefixes          = ["10.0.1.0/24"]

vm_name        = "my-vm"
vm_location    = "East US"
vm_size        = "Standard_DS1_v2"
image_id       = "/subscriptions/<subscription-id>/resourceGroups/<resource-group>/providers/Microsoft.Compute/images/<image-name>"
admin_username = "adminuser"
admin_password = "AdminPassword123"
environment    = "development"

location     = "East US"
environment1 = "production"


sql_server_name     = "my-sql-server"
sql_database_name   = "my-database"
admin_username1     = "sqladmin"
admin_password1     = "P@ssw0rd1234"

# Cluster-specific configuration
cluster_name        = "my-aks-cluster"
dns_prefix          = "mycluster"

# Node configuration
node_count          = 3
node_vm_size        = "Standard_DS2_v2"

# Resource tagging
tags = {
  environment = "dev"
  owner       = "jai"
}

