resource "azurerm_network_security_group" "my_terraform_nsg" {
  name                = var.nsg_name
  location            = var.location
  resource_group_name = var.resource_group_name

}

# Create network interface
resource "azurerm_network_interface" "my_terraform_nic" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = var.nic_ip_name
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = var.ip_allocation_method
    public_ip_address_id          = var.pip_id
  }
}


# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "nsgconnection" {
  network_interface_id      = azurerm_network_interface.my_terraform_nic.id
  network_security_group_id = azurerm_network_security_group.my_terraform_nsg.id

  depends_on = [
    azurerm_network_interface.my_terraform_nic
  ]
}


resource "azurerm_windows_virtual_machine" "my_terraform_vm" {
  name                = var.vm_name
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.vm_size
  admin_username      = "adminuser"
  admin_password      = "P@$$w0rd1234!"
  network_interface_ids = [
    azurerm_network_interface.example.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}
