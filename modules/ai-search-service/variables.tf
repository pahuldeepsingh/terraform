variable "ai_service_name" {
  description = "The name of the App Service Plan for Linux."
  type        = string
}

variable "location" {
  description = "The location where the resources will be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "ai_sku_name" {
  description = "The pricing tier for the App Service Plan."
  type        = string
}

