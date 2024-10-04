output "virtual_network" {
    description = "value of the virtual network"
  value = azurerm_virtual_network.virtual_network.name
}

output "jumpbox_public_ip" {
    description = "value of the jumpbox public ip"
  value = azurerm_public_ip.jumpbox_public_ip
}

output "jumpbox_subnet" {
    description = "value of the jumpbox subnet"
  value = azurerm_subnet.jumpbox_subnet
}