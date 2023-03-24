resource "cloudflare_record" "juice" {
  for_each = toset(azurerm_dns_zone.juice.name_servers)

  zone_id = var.cloudflare_zone_id
  name    = azurerm_dns_zone.juice.name
  type    = "NS"
  value   = each.key
  ttl     = 1
}