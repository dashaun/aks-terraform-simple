resource "helm_release" "harbor_instance" {
  name       = "harbor-instance"
  namespace  = "harbor"
  repository = "https://helm.goharbor.io"

  chart = "harbor"

  set {
    name  = "expose.ingress.host.core"
    value = format("core.harbor.%s", var.domain)
  }

  set {
    name  = "expose.ingress.hosts.notary"
    value = format("notary.harbor.%s", var.domain)
  }

  set {
    name  = "externalURL"
    value = format("https://harbor.%s", var.domain)
  }

  set {
    name  = "database.type"
    value = "external"
  }

  set {
    name  = "database.external.host"
    value = azurerm_postgresql_server.juice.fqdn
  }

  set {
    name  = "redis.type"
    value = "external"
  }
  
  set {
    name = "redis.external.addr"
    value = azurerm_redis_cache.juice.hostname
  }

}