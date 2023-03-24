terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
    cloudflare = {
      source = "cloudflare/cloudflare"
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