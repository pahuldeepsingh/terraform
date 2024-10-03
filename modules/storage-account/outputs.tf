output "name" {
    description = "The name of the created storage account."
    value = azurerm_storage_account.storage_account.name
}

output "id" {
    description = "The ID of the created storage account."
    value = azurerm_storage_account.storage_account.id
}

output "primary_access_key" {
    description = "The primary access key of the storage account."
    value = azurerm_storage_account.storage_account.primary_access_key
}
