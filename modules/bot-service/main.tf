data "azurerm_client_config" "current" {}

resource "azurerm_bot_service_azure_bot" "azure_bot" {
  name                = var.bot_name
  resource_group_name = var.resource_group_name
  location            = var.location
  microsoft_app_id    = data.azurerm_client_config.current.client_id
  sku                 = var.sku

  tags = {
    environment = var.env
  }
}