variable "virtual_network_name" {
  description = "The name of the Virtual Network"
  type        = string
}

variable "virtual_network_location" {
  description = "The location of the Virtual Network"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Resource Group to deploy into"
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

