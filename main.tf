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

# Key Vault
module "key_vault" {
  source              = "./modules/key-vault"
  keyvault_name       = var.keyvault_name
  location            = var.location
  resource_group_name = var.resource_group_name
  enabled_for_disk_encryption = var.enabled_for_disk_encryption
  soft_delete_retention_days = var.soft_delete_retention_days
  purge_protection_enabled = var.purge_protection_enabled
  sku_name = var.sku_name
}

# Bot Service

module "bot_service" {
  source              = "./modules/bot-service"
  bot_name            = var.bot_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  env                 = var.env
}

# Cosmos DB

module "cosmos_db" {
  source              = "./modules/cosmos-db"
  rg_name             = var.resource_group_name
  rg_location         = var.location
  cosmosdb_account_name = var.cosmosdb_account_name
  cosmosdb_name       = var.cosmosdb_name
  cosmosdb_sql_container_name = var.cosmosdb_sql_container_name
  cosmosdb_sql_container_key_paths = var.cosmosdb_sql_container_key_paths
  cosmosdb_sql_container_throughput = var.cosmosdb_sql_container_throughput
  cosmosdb_account_offer_type = var.cosmosdb_account_offer_type
  cosmosdb_account_kind = var.cosmosdb_account_kind
  cosmosdb_account_access = var.cosmosdb_account_access
  cosmosdb_account_consistency_level = var.cosmosdb_account_consistency_level
  cosmosdb_account_failover_priority = var.cosmosdb_account_failover_priority
}

# Storage Account

module "storage_account" {
  source              = "./modules/storage-account"
  storage_account_name = var.storage_account_name
  resource_group_name = var.resource_group_name
  location            = var.location
  storage_account_tier = var.storage_account_tier
  account_replication_type = var.account_replication_type
  env                 = var.env
  access_tier         = var.access_tier
}

# Storage Account Containers

module "storage_account_containers" {
  source              = "./modules/storage-account-containers"
  container_name      = var.container_name
  container_access_type = var.container_access_type
  storage_account_name = module.storage_account.name
  
}