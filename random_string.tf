resource "random_string" "aks_cluster_name" {
  length  = 4
  numeric = false
  special = false
  upper   = true
}

resource "random_string" "redis_cache_name" {
  length  = 4
  special = false
}

resource "random_string" "resource_group_name" {
  length  = 4
  special = false
}