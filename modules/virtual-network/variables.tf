variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "vnet_address_space" {
  type = list(string)
}
#jumpbox subnet
variable "jumpbox_subnet_name" {
  type = string
}

variable "jumpbox_subnet_address_prefix" {
  type = list(string)
}

#app service subnet
variable "appservice_subnet_name" {
  type = string
}

variable "appservice_subnet_address_prefix" {
  type = list(string)
}

#Paas Subnet
variable "paas_subnet_name" {
  type = string
}

variable "paas_subnet_address_prefix" {
  type = list(string)
}
