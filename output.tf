locals {
  redisgeek_config = {
    kube_config_raw = azurerm_kubernetes_cluster.juice.kube_config_raw
    kube_config     = azurerm_kubernetes_cluster.juice.kube_config
  }
  rg           = azurerm_resource_group.juice.name
  cluster_name = azurerm_kubernetes_cluster.juice.name
}

output "resource_group" {
  value = azurerm_resource_group.juice.name
}

output "cluster_name" {
  value = azurerm_kubernetes_cluster.juice.name
}

output "redisgeek_config" {
  value     = jsonencode(local.redisgeek_config)
  sensitive = true
}

output "a_aks_get_credentials" {
  value       = "az aks get-credentials --resource-group  ${local.rg} --name ${local.cluster_name}"
  description = "command to get kube config via az aks cli"
}