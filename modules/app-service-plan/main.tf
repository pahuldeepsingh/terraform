resource "azurerm_service_plan" "linux_plan" {
  name                = var.plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type = var.os_type
  sku_name = var.sku_name

  
}
