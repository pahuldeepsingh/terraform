
# Create network interface
resource "azurerm_network_interface" "linux_vm1_nic" {
  name                = var.linux_vm1_nic_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = var.linux_vm1_nic_ip_name
    subnet_id                     = var.jumpbox_subnet_id
    private_ip_address_allocation = var.ip_allocation_method
    public_ip_address_id          = var.linux_vm1_public_ip
  }
}

# Create a Linux virtual machine
resource "azurerm_linux_virtual_machine" "linux_vm1" {
  name                  = var.linux_vm1_name
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [azurerm_network_interface.linux_vm1_nic.id]
  size                  = var.vm_size

  os_disk {
    name                 = var.os_disk_name
    caching              = "ReadWrite"
    storage_account_type = var.storage_account_type
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  computer_name                   = var.computer_name
  admin_username                  = var.vm_admin_user
  admin_password                  =  var.vm_admin_password

  disable_password_authentication = false
}

