variable "cosmosdb_account_name" {
  description = "The name of the Cosmos DB account."
  type        = string
  
}

variable "rg_name" {
  description = "The name of the resource group."
  type        = string
  
}

variable "rg_location" {
  description = "The location where the resources will be created."
  type        = string
  
}

variable "cosmosdb_account_offer_type" {
  description = "The offer type for the Cosmos DB account."
  type        = string
  default     = "Standard"
  
}

variable "cosmosdb_account_kind" {
  description = "The kind of Cosmos DB account."
  type        = string
  default     = "GlobalDocumentDB"
  
}

variable "cosmosdb_account_access" {
  description = "The name of the Cosmos DB account."
  type        = string
  
}

variable "cosmosdb_account_consistency_level" {
  description = "The consistency level for the Cosmos DB account."
  type        = string
  default     = "Session"
  
}

variable "cosmosdb_account_failover_priority" {
  description = "The failover priority for the Cosmos DB account."
  type        = number
  default     = 0
  
}

variable "cosmosdb_name" {
  description = "The name of the Cosmos DB database."
  type        = string
  
}

variable "cosmosdb_sql_container_name" {
  description = "The name of the Cosmos DB container."
  type        = string
  
}

variable "cosmosdb_sql_container_key_paths" {
  description = "The partition key paths for the Cosmos DB container."
  type        = list(string)
  
}

variable "cosmosdb_sql_container_throughput" {
  description = "The throughput for the Cosmos DB container."
  type        = number
  default     = 400
  
}

