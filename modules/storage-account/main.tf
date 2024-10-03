resource "azurerm_storage_account" "storage_account" {
    name                     = var.storage_account_name 
    resource_group_name      = var.resource_group_name
    location                 = var.location
    account_tier             = var.storage_account_tier
    account_replication_type = var.account_replication_type
    
    access_tier = var.access_tier
    tags = {
        environment = var.env
    }
}

