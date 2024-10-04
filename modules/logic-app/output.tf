# Output the details of the created Logic App
output "logic_app_name" {
  description = "Name of the created Logic App"
  value       = azurerm_logic_app_workflow.empty_logic_app.name
}

output "logic_app_id" {
  description = "ID of the created Logic App"
  value       = azurerm_logic_app_workflow.empty_logic_app.id
}