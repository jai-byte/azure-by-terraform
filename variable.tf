# Resource Group
variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
}

variable "resource_group_location" {
  description = "The location of the Resource Group"
  type        = string
}

# Virtual Network
variable "virtual_network_name" {
  description = "The name of the Virtual Network"
  type        = string
}

variable "virtual_network_location" {
  description = "The location of the Virtual Network"
  type        = string
}

variable "address_space" {
  description = "The address space for the Virtual Network"
  type        = list(string)
}

variable "subnet_name" {
  description = "The name of the Subnet"
  type        = string
}

variable "subnet_prefixes" {
  description = "The list of Subnet prefixes"
  type        = list(string)
}

# VM
variable "vm_name" {
  description = "The name of the Virtual Machine"
  type        = string
}

variable "vm_size" {
  description = "The size of the Virtual Machine"
  type        = string
}

variable "vm_location" {
  description = "The location for the VM"
  type        = string
}

variable "image_id" {
  description = "The ID of the image"
  type        = string
}

variable "admin_username" {
  description = "The admin username for VM"
  type        = string
}

variable "admin_password" {
  description = "The admin password for VM"
  type        = string
}

variable "environment" {
  description = "The environment for the VM"
  type        = string
}

# variable "subnet_id" {
#   description = "The subnet ID to place the VM"
#   type        = string
# }


variable "location" {
  description = "Azure region for the resources."
  type        = string
}

variable "environment1" {
  description = "Environment tag for storage resources."
  type        = string
}


variable "sql_server_name" {
  description = "The name of the SQL Server."
  type        = string
}

variable "sql_database_name" {
  description = "The name of the MSSQL Database."
  type        = string
}

variable "admin_username1" {
  description = "Administrator username for the SQL Server."
  type        = string
}

variable "admin_password1" {
  description = "Administrator password for the SQL Server."
  type        = string
}

variable "collation" {
  description = "The collation of the MSSQL Database."
  type        = string
  default     = "SQL_Latin1_General_CP1_CI_AS"
}

variable "max_size_gb" {
  description = "The maximum size of the database in gigabytes."
  type        = number
  default     = 10
}
variable "cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the default node pool"
  type        = number
  default     = 3 # Default node count
}

variable "node_vm_size" {
  description = "The VM size for the nodes in the AKS cluster"
  type        = string
  default     = "Standard_DS2_v2" # Default VM size
}

variable "tags" {
  description = "A mapping of tags to assign to the AKS resources"
  type        = map(string)
  default     = {}
}



