variable "nic_name" {
  description = "Name of Network Interface"
  type        = string
}
variable "vm_subnet_id" {
  type = string
}
variable "nic_configuration_name" {
  description = "Name of ip configuration for Network Interface"
  type        = string
}

variable "nic_configuration_allocation_type" {
  description = "Allocation Type for ip configuration for Network Interface"
  type        = string
}

variable "rg_name" {
  description = "Name of Resource Group"
  type        = string
  
}

variable "rg_location" {
  description = "Location of Resource Group"
  type        = string
}