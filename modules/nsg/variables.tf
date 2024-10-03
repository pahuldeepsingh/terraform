variable "vm_nsg_name" {
  description = "Name of Network Security Group"
  type        = string
}
variable "nsg_rule_name" {
  description = "Name of Network Security Group Rule"
  type        = string
}
variable "nsg_priority" {
  description = "Priority for Network Security group Rule"
  type        = number
}
variable "nsg_direction" {
  description = "Direction for Network Security Group Rule"
  type        = string
}
variable "nsg_access" {
  description = "Access Type for Network Security group Rule "
  type        = string
}
variable "nsg_protocol" {
  description = "networking protocol for network security group rule"
  type        = string
}
variable "nsg_source_port_range" {
  description = "source port range for network security group rule"
  type        = string
}
variable "nsg_destination_port_range" {
  description = "destination port range for network security group rule"
  type        = number
}
variable "nsg_source_address_prefix" {
  description = "source address prefix for network security group rule"
  type        = string
}
variable "nsg_destination_address_prefix" {
  description = "destination address prefix for network security group rule"
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