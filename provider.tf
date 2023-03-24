terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
    cloudflare = {
      source = "cloudflare/cloudflare"
    }
    helm = {
      source = "hashicorp/helm"
    }
    random = {
      source = "hashicorp/random"
    }
  }
}

provider "azurerm" {
  environment = var.cloud_name
  features {
  }
}

provider "cloudflare" {
  # Configuration options
}

provider "helm" {
  kubernetes {
    host     = azurerm_kubernetes_cluster.juice.fqdn
    client_certificate     = azurerm_kubernetes_cluster.juice.kube_config.0.client_certificate
    client_key             = azurerm_kubernetes_cluster.juice.kube_config.0.client_key
    cluster_ca_certificate = azurerm_kubernetes_cluster.juice.kube_config.0.cluster_ca_certificate
  }
}