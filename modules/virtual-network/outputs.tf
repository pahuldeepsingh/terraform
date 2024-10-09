output "virtual_network" {
    description = "value of the virtual network"
  value = azurerm_virtual_network.virtual_network.name
}

output "jumpbox_subnet" {
    description = "value of the jumpbox subnet"
  value = azurerm_subnet.jumpbox_subnet
}

output "paas_subnet" {
    description = "value of the jumpbox subnet"
  value = azurerm_subnet.paas_subnet
}

output "appservice_subnet" {
    description = "value of the jumpbox subnet"
  value = azurerm_subnet.appservice_subnet
}