# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}


# terraform {
#   required_providers {
#     azurerm = {
#       source = "hashicorp/azurerm"
#       version = "4.3.0"
#     }
#   }
# }

# provider "azurerm" {
#  features {}
#    subscription_id = cd80669d-c886-455a-b108-8299fac678e3
#  //subscription_id = var.subscription_id
# }