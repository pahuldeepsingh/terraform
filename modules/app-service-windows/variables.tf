variable "app_name" {
  description = "The name of the Windows App Service."
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

variable "app_service_plan_id" {
  description = "The ID of the associated App Service Plan for Windows."
  type        = string
}


variable "app_settings" {
  description = "Application settings for the Windows App Service."
  type        = map(string)
  default     = {}
}

variable "minimum_tls_version" {
  description = "The minimum TLS version for the Windows App Service."
  type        = string
 
  
}

variable "docker_image_name" {
  description = "The name of the Docker image to use for the Windows App Service."
  type        = string
}