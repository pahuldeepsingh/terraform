# Purpose: Create a virtual network and subnets
resource "azurerm_virtual_network" "virtual_network" {
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  resource_group_name = var.resource_group_name
  location            = var.location
}

# creating jumpbox subnet
resource "azurerm_subnet" "jumpbox_subnet" {
  name                 = var.jumpbox_subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.virtual_network.name
  address_prefixes     = var.jumpbox_subnet_address_prefix
}

# creating paas subnet
resource "azurerm_subnet" "paas_subnet" {
  name                 = var.paas_subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.virtual_network.name
  address_prefixes     = var.paas_subnet_address_prefix
}

# creating appservice subnet
resource "azurerm_subnet" "appservice_subnet" {
  name                 = var.appservice_subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.virtual_network.name
  address_prefixes     = var.appservice_subnet_address_prefix
}

# # creating public ip
# resource "azurerm_public_ip" "win_dev1_public_ip" {
#   name                = var.win_dev1_pip_name
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   allocation_method   = var.pip_allocation_method
#   sku = "Standard"
# }

# resource "azurerm_public_ip" "linux_dev2_public_ip" {
#   name                = var.linux_dev2_pip_name
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   allocation_method   = var.pip_allocation_method
#   sku = "Standard"
# }
