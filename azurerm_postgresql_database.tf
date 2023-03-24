resource "azurerm_postgresql_database" "notary_signer" {
  name                = "notary_signer"
  resource_group_name = azurerm_resource_group.juice.name
  server_name         = azurerm_postgresql_server.juice.name
  charset             = "UTF8"
  collation           = "en-US"
}

resource "azurerm_postgresql_database" "notary_server" {
  name                = "notary_server"
  resource_group_name = azurerm_resource_group.juice.name
  server_name         = azurerm_postgresql_server.juice.name
  charset             = "UTF8"
  collation           = "en-US"
}

resource "azurerm_postgresql_database" "registry" {
  name                = "registry"
  resource_group_name = azurerm_resource_group.juice.name
  server_name         = azurerm_postgresql_server.juice.name
  charset             = "UTF8"
  collation           = "en-US"
}