output "storage_account_id" {
  description = "The ID of the Azure Storage Account."
  value       = azurerm_storage_account.storage.id
}

output "storage_account_primary_web_endpoint" {
  description = "The primary web endpoint of the storage account."
  value       = azurerm_storage_account.storage.primary_web_endpoint
}
