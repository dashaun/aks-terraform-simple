resource "azurerm_postgresql_server" "juice" {
  name                = var.identifier
  location            = azurerm_resource_group.juice.location
  resource_group_name = azurerm_resource_group.juice.name

  sku_name = "B_Gen5_2"

  storage_mb                   = 5120
  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
  auto_grow_enabled            = false

  administrator_login          = "psqladmin"
  administrator_login_password = random_password.postgres_server_admin_password.id
  version                      = "11"
  ssl_enforcement_enabled      = true
}