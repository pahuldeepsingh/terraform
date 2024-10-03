resource "azurerm_linux_virtual_machine" "vm" {
  name                            = var.vm_name
  admin_username                  = var.vm_admin_user
  admin_password                  = var.vm_admin_password
  resource_group_name             = var.rg_name
  location                        = var.rg_location
  network_interface_ids           = [azurerm_network_interface.nic.id]
  size                            = var.vm_size
  disable_password_authentication = "false"

  os_disk {
    name                 = var.os_disk_name
    caching              = var.os_disk_caching
    storage_account_type = var.os_disk_type
  }
  source_image_reference {
    publisher = var.os_publisher
    offer     = var.os_offer
    sku       = var.os_sku
    version   = var.os_version
  }
}

