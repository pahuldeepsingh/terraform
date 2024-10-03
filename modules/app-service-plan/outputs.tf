output "id" {
  description = "The ID of the Linux App Service Plan."
  value       = azurerm_service_plan.linux_plan.id
}

output "name" {
  description = "The name of the Linux App Service Plan."
  value       = azurerm_service_plan.linux_plan.name
}
