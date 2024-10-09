# # creating public ip
# resource "azurerm_public_ip" "win_dev1_public_ip" {
#   name                = var.win_dev1_pip_name
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   allocation_method   = var.pip_allocation_method
#   sku = "Standard"
# }

# resource "azurerm_public_ip" "linux_vm1_public_ip" {
#   name                = var.linux_vm1_pip_name
#   resource_group_name = var.resource_group_name
#   location            = var.location
#   allocation_method   = var.pip_allocation_method
#   sku = "Standard"
# }
