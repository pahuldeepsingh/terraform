variable "app_name" {
  description = "The name of the Linux App Service."
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
  description = "The ID of the associated App Service Plan for Linux."
  type        = string
}

variable "python_version" {
  description = "The type of application stack (e.g., 'python')."
  type        = string
  default = "3.9"
}

variable "app_settings" {
  description = "Application settings for the Linux App Service."
  type        = map(string)
  default     = {}
}

