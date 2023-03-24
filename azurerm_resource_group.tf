resource "azurerm_resource_group" "juice" {
  name     = format("%s-%s", var.identifier, random_string.resource_group_name.id)
  location = var.location
  tags     = merge(var.tags, { owner = data.azurerm_client_config.current.client_id })
}
