resource "azurerm_cosmosdb_account" "cosmosdb_account" {
  name                          = var.cosmosdb_account_name
  resource_group_name           = var.rg_name
  location                      = var.rg_location
  offer_type                    = var.cosmosdb_account_offer_type
  kind                          = var.cosmosdb_account_kind
  public_network_access_enabled = var.cosmosdb_account_access
  automatic_failover_enabled = true
  consistency_policy {
    consistency_level = var.cosmosdb_account_consistency_level
  }

  geo_location {
    location          = var.rg_location
    failover_priority = var.cosmosdb_account_failover_priority
  }
}

resource "azurerm_cosmosdb_sql_database" "cosmosdb_sql_database" {
  name                = var.cosmosdb_name
  resource_group_name = var.rg_name
  account_name        = azurerm_cosmosdb_account.cosmosdb_account.name
}

# resource "azurerm_cosmosdb_sql_container" "cosmosdb_sql_container" {
#   name                = var.cosmosdb_sql_container_name
#   resource_group_name = var.rg_name
#   account_name        = azurerm_cosmosdb_account.cosmosdb_account.name
#   database_name       = azurerm_cosmosdb_sql_database.cosmosdb_sql_database.name
#   partition_key_paths = var.cosmosdb_sql_container_key_paths
#   throughput          = var.cosmosdb_sql_container_throughput
# }