resource "azurerm_search_service" "ai-service" {
  name                = var.ai_service_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.ai_sku_name
}