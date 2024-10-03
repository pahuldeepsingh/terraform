resource "azurerm_windows_web_app" "windows_app" {
  name                = var.app_name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id = var.app_service_plan_id

  site_config {
    minimum_tls_version = var.minimum_tls_version
    application_stack {
     docker_image_name = var.docker_image_name
    }
  }

  app_settings = var.app_settings
}
