variable "resource_group_name" {
  description = "Name of the resource group for the storage account."
  type        = string
}

variable "location" {
  description = "Azure location for the storage account."
  type        = string
}

variable "storage_account_name" {
  description = "Name of the storage account."
  type        = string
}

variable "account_tier" {
  description = "The tier of the storage account."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type of the storage account."
  type        = string
  default     = "LRS"
}

variable "is_hns_enabled" {
  description = "Whether or not hierarchical namespace is enabled."
  type        = bool
  default     = false
}

variable "environment1" {
  description = "The environment for tagging the storage account."
  type        = string
}
