output "container_name" {
  description = "The name of the created container."
  value       = azurerm_storage_container.storage_container.name
}
