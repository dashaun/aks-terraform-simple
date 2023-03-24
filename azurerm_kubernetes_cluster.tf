resource "azurerm_kubernetes_cluster" "juice" {
  name                = format("%s-%s", var.identifier, random_string.aks_cluster_name.id)
  location            = azurerm_resource_group.juice.location
  resource_group_name = azurerm_resource_group.juice.name
  dns_prefix          = random_string.aks_cluster_name.id
  tags                = merge(var.tags, { owner = data.azurerm_client_config.current.client_id })

  default_node_pool {
    name       = "default"
    node_count = 3
    vm_size    = "Standard_d4_v3"
  }

  identity {
    type = "SystemAssigned"
  }

}