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

# #Public IP
# variable "win_dev1_pip_name" {
#   type = string
# }

# variable "pip_allocation_method" {
#   type = string
# }

# variable "linux_dev2_pip_name" {
#   type = string
# }
