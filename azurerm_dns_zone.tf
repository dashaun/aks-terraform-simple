resource "azurerm_dns_zone" "juice" {
  name                = var.domain
  resource_group_name = azurerm_resource_group.juice.name
}