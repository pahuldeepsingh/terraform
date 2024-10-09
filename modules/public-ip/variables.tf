# #Public IP
# variable "win_dev1_pip_name" {
#   type = string
# }

variable "pip_allocation_method" {
  type = string
}

variable "linux_vm1_pip_name" {
  type = string
}
variable "location" {
  description = "Location of the Logic App"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group Name where the Logic App will be created"
  type        = string
}