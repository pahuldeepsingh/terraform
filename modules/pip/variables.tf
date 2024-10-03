variable "pip_name" {
  description = "Name of Public Ip"
  type        = string
}

variable "pip_allocation_type" {
  description = "Allocation Type for Public Ip"
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