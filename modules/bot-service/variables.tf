variable "bot_name" {
  description = "The name of the Azure Bot Service."
  type        = string
  
}

variable "resource_group_name" {
  description = "The name of the resource group in which the Azure Bot Service will be created."
  type        = string  
  
}

variable "location" {
  description = "The Azure region in which the Azure Bot Service will be created."
  type        = string
  
}

variable "sku" {
  description = "The SKU of the Azure Bot Service."
  type        = string
  
}

variable "env" {
  description = "The environment in which the Azure Bot Service will be created."
  type        = string
  
}

variable "client_id" {
  description = "The client ID of the Azure Bot Service."
  type        = string
  
}