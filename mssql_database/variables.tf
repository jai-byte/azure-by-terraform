variable "resource_group_name" {
  description = "The name of the resource group for the MSSQL Server and Database."
  type        = string
}

variable "location" {
  description = "Azure region for the resources."
  type        = string
}

variable "sql_server_name1" {
  description = "The name of the SQL Server."
  type        = string
}

variable "sql_database_name1" {
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

variable "environment" {
  description = "The environment tag for the resources."
  type        = string
}

