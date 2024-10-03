variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
  default     = "devenvstorage"
  
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = "devenv-rg"
  
}


variable "location" {
  description = "The location for the storage account."
  type        = string
  default     = "East US"
  
}

variable "storage_account_tier" {
  description = "The tier for the storage account."
  type        = string
  default     = "Standard"
  
}

variable "account_replication_type" {
  description = "The replication type for the storage account."
  type        = string
  default     = "LRS"
  
}

variable "env" {
  description = "The environment for the storage account."
  type        = string
  default     = "dev"
  
}

variable "access_tier" {
  description = "The access tier for the storage account."
  type        = string
  default     = "Hot"
  
}