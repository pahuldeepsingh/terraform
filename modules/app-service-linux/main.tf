resource "azurerm_linux_web_app" "linux_app" {
  name                = var.app_name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id = var.app_service_plan_id

  site_config {
    application_stack {
      python_version = var.python_version
    }
  }

  app_settings = var.app_settings
}
