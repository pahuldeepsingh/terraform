variable "keyvault_name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "enabled_for_disk_encryption" {
  type    = bool
  default = false
}

variable "soft_delete_retention_days" {
  type    = number
  default = 90
}

variable "purge_protection_enabled" {
  type    = bool
  default = false
}

variable "sku_name" {
  type    = string
  default = "standard"
}
