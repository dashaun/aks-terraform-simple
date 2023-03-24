resource "azurerm_redis_cache" "juice" {
  name                = format("%s-%s", var.identifier, random_string.redis_cache_name.result)
  location            = azurerm_resource_group.juice.location
  resource_group_name = azurerm_resource_group.juice.name
  capacity            = 1
  family              = "C"
  sku_name            = "Basic"
  enable_non_ssl_port = false
  minimum_tls_version = "1.2"

  redis_configuration {
  }
}