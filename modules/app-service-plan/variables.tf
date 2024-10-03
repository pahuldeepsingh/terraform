variable "plan_name" {
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

variable "sku_name" {
  description = "The pricing tier for the App Service Plan."
  type        = string
  default = "s1"
}

variable "os_type" {
  description = "The operating system type of the App Service Plan."
  type        = string
  default     = "Linux"
  
}