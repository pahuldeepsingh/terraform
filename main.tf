
# Virtual Network
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}
module "virtual_network" {
  source              = "./modules/virtual-network"
  location            = var.location
  resource_group_name = var.resource_group_name
  vnet_name           = var.vnet_name
  vnet_address_space  = var.vnet_address_space
  jumpbox_subnet_name = var.jumpbox_subnet_name
  jumpbox_subnet_address_prefix = var.jumpbox_subnet_address_prefix
  appservice_subnet_name = var.appservice_subnet_name
  appservice_subnet_address_prefix = var.appservice_subnet_address_prefix
  paas_subnet_name = var.paas_subnet_name
  paas_subnet_address_prefix = var.paas_subnet_address_prefix

  }

# module "virtual_machine" {
#   source              = "./modules/virtual-machine-linux"
#   location            = var.location
#   resource_group_name = var.resource_group_name
#   nsg_name            = var.nsg_name
#   nic_name            = var.nic_name
#   nic_ip_name         = var.nic_ip_name
#   subnet_id           = module.virtual_network.jumpbox_subnet.id
#   pip_allocation_method = var.pip_allocation_method
#   linux_vm1_public_ip = module.virtual_network.linux_vm1_public_ip.id
#   linux_vm1_name = var.linux_vm1_name
#   vm_size             = var.vm_size
#   os_disk_name        = var.os_disk_name
#   storage_account_type = var.storage_account_type
#   computer_name       = var.computer_name
#   vm_admin_user       = var.vm_admin_user
#   vm_admin_password   = var.vm_admin_password

# }


# # Virtual Machine
# module "virtual_machine" {
#   source              = "./modules/virtual-machine-linux"
#   location            = var.location
#   resource_group_name = var.resource_group_name
#   nsg_name            = var.nsg_name
#   nic_name            = var.nic_name
#   nic_ip_name         = var.nic_ip_name
#   subnet_id           = module.virtual_network.jumpbox_subnet.id
#   ip_allocation_method = var.ip_allocation_method
#   pip_id              = module.virtual_network.jumpbox_public_ip.id
#   vm_name             = var.vm_name
#   vm_size             = var.vm_size
#   os_disk_name        = var.os_disk_name
#   storage_account_type = var.storage_account_type
#   computer_name       = var.computer_name
#   vm_admin_user       = var.vm_admin_user
#   vm_admin_password   = var.vm_admin_password

# }



































# # This is the main configuration file for the Terraform project. It defines the modules that will be used to create the Azure resources.

# # Linxux App Service Plan



# module "linux_plan" {
#   source              = "./modules/app-service-plan"
#   plan_name           = var.linux_plan_name
#   location            = var.location
#   resource_group_name = var.resource_group_name
#   os_type = var.linux_os_type
#   sku_name = var.linux_sku_name
# }

# # Linux App Service
# module "linux_app" {
#   source              = "./modules/app-service-linux"
#   app_name            = var.linux_app_name
#   location            = var.location
#   resource_group_name = var.resource_group_name
#   app_service_plan_id = module.linux_plan.id
  
# }
# # Windows App Service Plan
# module "windows_plan" {
#   source              = "./modules/app-service-plan"
#   plan_name           = var.windows_plan_name
#   location            = var.location
#   resource_group_name = var.resource_group_name
#   os_type = var.windows_os_type
#   sku_name = var.windows_sku_name
# }

# # Windows App Service
# module "windows_app" {
#   source              = "./modules/app-service-windows"
#   app_name            = var.windows_app_name
#   location            = var.location
#   resource_group_name = var.resource_group_name
#   app_service_plan_id = module.windows_plan.id
#   minimum_tls_version = var.minimum_tls_version
#   docker_image_name = var.docker_image_name
# }

# # Key Vault
# module "key_vault" {
#   source              = "./modules/key-vault"
#   keyvault_name       = var.keyvault_name
#   location            = var.location
#   resource_group_name = var.resource_group_name
#   enabled_for_disk_encryption = var.enabled_for_disk_encryption
#   soft_delete_retention_days = var.soft_delete_retention_days
#   purge_protection_enabled = var.purge_protection_enabled
#   sku_name = var.sku_name
# }

# # Bot Service

# module "bot_service" {
#   source              = "./modules/bot-service"
#   bot_name            = var.bot_name
#   location            = var.location
#   resource_group_name = var.resource_group_name
#   client_id           = var.client_id
#   sku                 = var.sku
#   env                 = var.env
# }

# # Cosmos DB

# module "cosmos_db" {
#   source              = "./modules/cosmos-db"
#   rg_name             = var.resource_group_name
#   rg_location         = var.location
#   cosmosdb_account_name = var.cosmosdb_account_name
#   cosmosdb_name       = var.cosmosdb_name
#   cosmosdb_sql_container_name = var.cosmosdb_sql_container_name
#   cosmosdb_sql_container_key_paths = var.cosmosdb_sql_container_key_paths
#   cosmosdb_sql_container_throughput = var.cosmosdb_sql_container_throughput
#   cosmosdb_account_offer_type = var.cosmosdb_account_offer_type
#   cosmosdb_account_kind = var.cosmosdb_account_kind
#   cosmosdb_account_access = var.cosmosdb_account_access
#   cosmosdb_account_consistency_level = var.cosmosdb_account_consistency_level
#   cosmosdb_account_failover_priority = var.cosmosdb_account_failover_priority
# }

# # Storage Account

# module "storage_account" {
#   source              = "./modules/storage-account"
#   storage_account_name = var.storage_account_name
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   storage_account_tier = var.storage_account_tier
#   account_replication_type = var.account_replication_type
#   env                 = var.env
#   access_tier         = var.access_tier
# }

# # Storage Account Containers

# module "storage_account_containers" {
#   source              = "./modules/storage-account-containers"
#   container_name      = var.container_name
#   container_access_type = var.container_access_type
#   storage_account_name = module.storage_account.name
  
# }





# # Logic App

# module "name" {
#   source              = "./modules/logic-app"
#   logic_app_name      = var.logic_app_name
#   location            = var.location
#   resource_group_name = var.resource_group_name
# }


# # AI Search Service

# module "name" {
#   source                = "./modules/ai-search-service"
#   ai_service_name       = var.ai_service_name
#   resource_group_name   = var.resource_group_name
#   location              = var.location
#   ai_sku_name           = var.ai_sku_name
# }
