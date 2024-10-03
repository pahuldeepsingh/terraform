# This is the main configuration file for the Terraform project. It defines the modules that will be used to create the Azure resources.



# Linxux App Service Plan
module "linux_plan" {
  source              = "./modules/app-service-plan"
  plan_name           = var.linux_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type = var.linux_os_type
  sku_name = var.linux_sku_name
}

# Linux App Service
module "linux_app" {
  source              = "./modules/app-service-linux"
  app_name            = var.linux_app_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = module.linux_plan.id
  
}
# Windows App Service Plan
module "windows_plan" {
  source              = "./modules/app-service-plan"
  plan_name           = var.windows_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type = var.windows_os_type
  sku_name = var.windows_sku_name
}

# Windows App Service
module "windows_app" {
  source              = "./modules/app-service-windows"
  app_name            = var.windows_app_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = module.windows_plan.id
  minimum_tls_version = var.minimum_tls_version
  docker_image_name = var.docker_image_name
}
