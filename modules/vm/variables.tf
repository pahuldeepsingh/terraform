variable "rg_name" {
  type = string
}
variable "rg_location" {
  type = string
}

variable "vm_name" {
  description = "Name of Virtual Machine"
  type        = string
}
variable "vm_admin_user" {
  description = "Admin Name for Virtual Machine"
  type        = string
}
variable "vm_admin_password" {
  description = "Admin Password for Virtual Machine"
  type        = string
}
variable "vm_size" {
  description = "Size of Virtual Machine"
  type        = string
}
variable "os_disk_name" {
  description = "Name of Os Disk"
  type        = string
}
variable "os_disk_caching" {
  description = "OS Disk Caching"
  type        = string
}
variable "os_disk_type" {
  description = "Os Disk Type"
  type        = string
}

variable "os_publisher" {
  description = "Publisher of OS"
  type        = string
}
variable "os_offer" {
  description = "Offer of OS"
  type        = string
}
variable "os_sku" {
  description = "SKU of OS"
  type        = string
}
variable "os_version" {
  description = "Version of OS"
  type        = string
}







