variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet_name" {
  type = string
  default = "vnet-terraform-test-001"
}

variable "vnet_address_space" {
  type = list(string)
  default = ["10.0.0.0/16"]
}


variable "jumpbox_subnet_name" {
  type = string
  default = "snet-jump-terraform-003"
}

variable "jumpbox_subnet_address_prefix" {
  type = list(string)
  default = ["10.0.3.0/24"]
}

variable "pip_name" {
  type = string
  default = "pip-jump-terraform-001"
}

variable "pip_allocation_method" {
  type = string
  default = "Dynamic"
}