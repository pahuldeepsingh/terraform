# Root Module Variables

# Azure Subscription ID
variable "subscription_id" {
  type = string
  default = "cd80669d-c886-455a-b108-8299fac678e3"
}
# Azure Client ID
variable "client_id" {
  type = string
  default = "246cfd43-77c5-4c63-8f77-d6a19a3876ec"
}
# Azure Region
variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "centralindia"
}


# Azure Resource Group
variable "resource_group_name" {
  description = "The name of the resource group in which to create resources."
  type        = string
  default = "rg-mqu-ai-assistant-mvp"
}


# Virtual Network
variable "vnet_name" {
  type = string
  default = "vnet-mqu-ai-assistant-dev-01"
}
variable "vnet_address_space" {
  type = list(string)
  default = ["10.0.0.0/22"]
}
#jumpbox subnet
variable "jumpbox_subnet_name" {
  type = string
  default = "snet-vm-mqu-ai-assistant-mvp-01"
}
variable "jumpbox_subnet_address_prefix" {
  type = list(string)
  default = ["10.0.0.0/27"]
}
#app service subnet
variable "appservice_subnet_name" {
  type = string
  default = "snet-appservice-mqu-ai-assistant-mvp-01"
}
variable "appservice_subnet_address_prefix" {
  type = list(string)
  default = ["10.0.1.0/27"]
}
#Paas Subnet
variable "paas_subnet_name" {
  type = string
  default = "snet-pass-mqu-ai-assistant-mvp-01"
}
variable "paas_subnet_address_prefix" {
  type = list(string)
  default = ["10.0.2.0/24"]
}


# # Virtual Machine
# variable "nic_name" {
#   description = "value of the nic name"
#   type = string
#   default = "nic-openai-001"
# }
# variable "nic_ip_name" {
#   description = "value of the nic ip name"
#   type = string
#   default = "ip-openai-001"
# }
# variable "subnet_id" {
#   description = "value of the subnet id"
#   type = string
# }
# variable "ip_allocation_method" {
#   description = "value of the ip allocation method"
#   type = string
#   default = "Dynamic"
# }

# variable "pip_id" {
#   description = "value of the pip id"
#   type = string
# }

# variable "linux_vm_name" {
#   description = "value of the vm name"
#   type = string
#   default = "vm-openai-001"
# }

# variable "linux_vm_size" {
#   description = "value of the vm size"
#   type = string
#   default = "Standard_B1s"
# }

# variable "linux_os_disk_name" {
#   description = "value of the os disk name"
#   type = string
#   default = "osdisk-openai-001"
# }

# variable "storage_account_type" {
#   description = "value of the storage account type"
#   type = string
#   default = "Standard_LRS"
# }

# variable "linux_computer_name" {
#   description = "value of the computer name"
#   type = string
#   default = "vm-openai-001"
# }

# variable "linux_vm_admin_user" {
#   description = "value of the vm admin user"
#   type = string
#   default = "azureuser"
# }

# variable "linux_vm_admin_password" {
#   description = "value of the vm admin password"
#   type = string
#   default = "Password1234!"
# }

# variable "linux_nsg_name" {
#   description = "value of the nsg name"
#   type = string
#   default = "nsg-openai-001"
# }

# variable "vm_storage_account" {
#   description = "value"
#   type = string
#   default = "openaivmstorage"
# }



# # Linux App Service Variables
# variable "linux_plan_name" {
#   description = "The name of the App Service Plan for Linux App Service."
#   type        = string
#   default     = "devenvlinux-plan"
# }

# variable "linux_app_name" {
#   description = "The name of the Linux App Service."
#   type        = string
#   default     = "devenvlinux-app"
# }

# variable "linux_sku_tier" {
#   description = "The pricing tier for the Linux App Service Plan."
#   type        = string
#   default     = "Standard"
# }

# variable "linux_sku_size" {
#   description = "The instance size for the Linux App Service Plan."
#   type        = string
#   default     = "S1"
# }



# variable "linux_app_settings" {
#   description = "Application settings for the Linux App Service."
#   type        = map(string)
#   default     = {
#     "WEBSITE_NODE_DEFAULT_VERSION" = "~14"
#   }
# }

# variable "linux_os_type" {
#   description = "The operating system type of the App Service Plan."
#   type        = string
#   default     = "Linux"
  
# }

# variable "linux_sku_name" {
#   description = "The pricing tier for the App Service Plan."
#   type        = string
#   default = "S1"
  
# }

# # Windows App Service Variables
# variable "windows_plan_name" {
#   description = "The name of the App Service Plan for Windows App Service."
#   type        = string
#   default     = "devenvwindows-plan"
# }

# variable "windows_app_name" {
#   description = "The name of the Windows App Service."
#   type        = string
#   default     = "devenvwindows-app"
# }

# variable "windows_os_type" {
#   description = "The operating system type of the App Service Plan."
#   type        = string
#   default     = "Windows" 
# }

# variable "windows_sku_name" {
#   description = "The pricing tier for the App Service Plan."
#   type        = string
#   default = "S1"
  
# }

# variable "windows_fx_version" {
#   description = "The runtime stack version for the Windows App Service."
#   type        = string
#   default     = "Node|14-lts"
# }

# variable "windows_app_settings" {
#   description = "Application settings for the Windows App Service."
#   type        = map(string)
#   default     = {
#     "WEBSITE_NODE_DEFAULT_VERSION" = "~14"
#   }
# }

# variable "minimum_tls_version" {
#   description = "The minimum TLS version for the Windows App Service."
#   type        = string
#   default     = "1.2"
# }

# variable "docker_image_name" {
#   description = "The name of the Docker image to use for the Windows App Service."
#   type        = string
#   default     = "mcr.microsoft.com/azuredocs/aci-helloworld"
  
# }

# # Key Vault
# variable "keyvault_name" {
#   description = "The name of the Key Vault."
#   type        = string
#   default     = "devenvkeyvaultpoc001"
# }

# variable "enabled_for_disk_encryption" {
#   description = "Specifies whether Azure Disk Encryption is enabled for the Key Vault."
#   type        = bool
#   default     = true
# }

# variable "soft_delete_retention_days" {
#   description = "The number of days that items should be retained in the Key Vault's recycle bin."
#   type        = number
#   default     = 7
# }

# variable "purge_protection_enabled" {
#   description = "Specifies whether purge protection is enabled for the Key Vault."
#   type        = bool
#   default     = true
# }

# variable "sku_name" {
#   description = "The SKU of the Key Vault."
#   type        = string
#   default     = "standard"
# }

# # Bot Service

# variable "bot_name" {
#   description = "The name of the Azure Bot Service."
#   type        = string
#   default     = "devenv-bot"

# }

# variable "sku" {
#   description = "The SKU of the Azure Bot Service."
#   type        = string
#   default     = "F0"
# }

# variable "env" {
#   description = "The environment in which the Azure Bot Service will be created."
#   type        = string
#   default     = "dev"
# }


# # Cosmos DB

# variable "cosmosdb_account_name" {
#   description = "The name of the Cosmos DB account."
#   type        = string
#   default     = "devenv-cosmosdb"
  
# }

# variable "cosmosdb_name" {
#   description = "The name of the Cosmos DB database."
#   type        = string
#   default     = "cosmosdb-mqu-ai-assistant-mvp-01"
  
# }

# variable "cosmosdb_sql_container_name" {
#   description = "The name of the Cosmos DB container."
#   type        = string
#   default     = "devenv-cosmosdb-container"
  
# }

# variable "cosmosdb_sql_container_key_paths" {
#   description = "The partition key paths for the Cosmos DB container."
#   type        = list(string)
#   default     = ["/definition/id"]
  
# }

# variable "cosmosdb_account_offer_type" {
#   description = "The offer type for the Cosmos DB account."
#   type        = string
#   default     = "Standard"
  
# }

# variable "cosmosdb_sql_container_throughput" {
#   description = "The throughput for the Cosmos DB container."
#   type        = number
#   default     = 400
  
# }

# variable "cosmosdb_account_access" {
#   description = "The name of the Cosmos DB account."
#   type        = string
#   default = "true"
  
# }

# variable "cosmosdb_account_kind" {
#   description = "The kind of Cosmos DB account."
#   type        = string
#   default     = "GlobalDocumentDB"
  
# }

# # Cosmos DB Account Consistency Policy
# variable "cosmosdb_account_consistency_level" {
#   description = "The consistency level for the Cosmos DB account."
#   type        = string
#   default     = "Session"
  
# }

# # Cosmos DB Account Geo-Replication

# variable "cosmosdb_account_failover_priority" {
#   description = "The failover priority for the Cosmos DB account."
#   type        = number
#   default     = 0
  
# }

# # Storage Account

# variable "storage_account_name" {
#   description = "The name of the storage account."
#   type        = string
#   default     = "openaidevenvstorage001"
  
# }

# variable "storage_account_tier" {
#   description = "The tier for the storage account."
#   type        = string
#   default     = "Standard"
  
# }

# variable "account_replication_type" {
#   description = "The replication type for the storage account."
#   type        = string
#   default     = "LRS"
  
# }

# variable "access_tier" {
#   description = "The access tier for the storage account."
#   type        = string
#   default     = "Hot"
  
# }


# # Storage Account Containers

# variable "container_access_type" {
#   description = "The access type for the storage container."
#   type        = string
#   default     = "blob"
  
# }

# variable "container_name" {
#   description = "The name of the storage container."
#   type        = string
#   default     = "devenv-container"
  
# }





# # Logic App

# variable "logic_app_name" {
#   description = "Name of the Logic App"
#   type        = string
#   default     = "my-empty-logicapp"
# }

# # AI-Search-service
# variable "ai_sku_name" {
#   description = "The pricing tier for the AI Search Service."
#   type        = string
#   default = "standard"
# }

# variable "ai_service_name" {
#   description = "The name of AI Search Service."
#   type        = string
#   default = "search-mqu-ai-assistant-mvp-01"
# }