# Root Module Variables

# Azure Resource Group
variable "resource_group_name" {
  description = "The name of the resource group in which to create resources."
  type        = string
  default = "Tej_RG"
}

# Azure Region
variable "location" {
  description = "The Azure region where resources will be created."
  type        = string
  default     = "East US"
}

# Linux App Service Variables
variable "linux_plan_name" {
  description = "The name of the App Service Plan for Linux App Service."
  type        = string
  default     = "devenvlinux-plan"
}

variable "linux_app_name" {
  description = "The name of the Linux App Service."
  type        = string
  default     = "devenvlinux-app"
}

variable "linux_sku_tier" {
  description = "The pricing tier for the Linux App Service Plan."
  type        = string
  default     = "Standard"
}

variable "linux_sku_size" {
  description = "The instance size for the Linux App Service Plan."
  type        = string
  default     = "S1"
}



variable "linux_app_settings" {
  description = "Application settings for the Linux App Service."
  type        = map(string)
  default     = {
    "WEBSITE_NODE_DEFAULT_VERSION" = "~14"
  }
}

variable "linux_os_type" {
  description = "The operating system type of the App Service Plan."
  type        = string
  default     = "Linux"
  
}

variable "linux_sku_name" {
  description = "The pricing tier for the App Service Plan."
  type        = string
  default = "S1"
  
}

# Windows App Service Variables
variable "windows_plan_name" {
  description = "The name of the App Service Plan for Windows App Service."
  type        = string
  default     = "devenvwindows-plan"
}

variable "windows_app_name" {
  description = "The name of the Windows App Service."
  type        = string
  default     = "devenvwindows-app"
}

variable "windows_os_type" {
  description = "The operating system type of the App Service Plan."
  type        = string
  default     = "Windows" 
}

variable "windows_sku_name" {
  description = "The pricing tier for the App Service Plan."
  type        = string
  default = "S1"
  
}

variable "windows_fx_version" {
  description = "The runtime stack version for the Windows App Service."
  type        = string
  default     = "Node|14-lts"
}

variable "windows_app_settings" {
  description = "Application settings for the Windows App Service."
  type        = map(string)
  default     = {
    "WEBSITE_NODE_DEFAULT_VERSION" = "~14"
  }
}

variable "minimum_tls_version" {
  description = "The minimum TLS version for the Windows App Service."
  type        = string
  default     = "1.2"
}

variable "docker_image_name" {
  description = "The name of the Docker image to use for the Windows App Service."
  type        = string
  default     = "mcr.microsoft.com/azuredocs/aci-helloworld"
  
}


# Azure Subscription ID
variable "subscription_id" {
  type = string
  default = "cd80669d-c886-455a-b108-8299fac678e3"
}

