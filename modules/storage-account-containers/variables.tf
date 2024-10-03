variable "container_name" {
  description = "The name of the storage container."
  type        = string
  default     = "devenv-container"
  
}

variable "container_access_type" {
  description = "The access type for the storage container."
  type        = string
  default     = "public"
  
}

variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
  default     = "devenvstorage"
  
}