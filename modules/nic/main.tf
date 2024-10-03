
resource "azurerm_network_interface" "nic" {
  name                = var.nic_name
  resource_group_name = var.rg_name
  location            = var.rg_location
  ip_configuration {
    name                          = var.nic_configuration_name
    subnet_id                     = var.vm_subnet_id
    private_ip_address_allocation = var.nic_configuration_allocation_type
    public_ip_address_id          = azurerm_public_ip.pip.id
  }
}

resource "azurerm_network_interface_security_group_association" "nic_nsg_association" {
  network_interface_id      = azurerm_network_interface.nic.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}
