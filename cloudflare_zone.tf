data "cloudflare_zone" "juice" {
  account_id = var.cloudflare_account_id
  zone_id    = var.cloudflare_zone_id
}