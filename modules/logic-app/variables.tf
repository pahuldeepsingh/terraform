# Define variables for the Logic App properties
variable "logic_app_name" {
  description = "Name of the Logic App"
  type        = string
  default     = "my-empty-logicapp"
}

variable "location" {
  description = "Location of the Logic App"
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Resource Group Name where the Logic App will be created"
  type        = string
  default = "poc_rg"
}

variable "logic_app_state" {
  description = "State of the Logic App (Enabled or Disabled)"
  type        = string
  default     = "Enabled"
}

variable "tag_environment" {
  description = "Environment tag for the Logic App"
  type        = string
  default     = "dev"
}

variable "tag_project_name" {
  description = "Project tag for the Logic App"
  type        = string
  default     = "Terraform"
}